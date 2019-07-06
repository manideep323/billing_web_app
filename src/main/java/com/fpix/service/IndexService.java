package com.fpix.service;


import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.*;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

@Service
public class IndexService implements IIndexService {
	static ArrayList<String> indexFiles = new ArrayList<>();
	static String flodePathString;
	static JSONArray mainJson = new JSONArray();
	static JSONObject mainObject = new JSONObject();

	@Override
	public JSONArray readFloderStructure(String flodersPath) {
		flodePathString = flodersPath;
		File maindir = new File(flodersPath);
		mainJson = new JSONArray();
		displayDirectoryContents(maindir,"#");
		//floderStructureToJson(indexFiles);
			return mainJson;
	}
	
	/*public void floderStructureToJson(ArrayList<String> indexFilesArg) {
		
		Set<String> set = new HashSet<>(indexFilesArg);
		indexFilesArg.clear();
		indexFilesArg.addAll(set);
		Collections.sort(indexFilesArg);
		
		for (String file : indexFiles) {
			if(file.startsWith("/")) {
				file = file.substring(1);
			}
		//System.out.println(file);
		file.split("/");
		
			
		}		
	}*/
	
	
	//static String uniqueID = UUID.randomUUID().toString();
	String parent_id = "#";
	public static void displayDirectoryContents(File maindir, String parent_id) {
		File[] files = maindir.listFiles();
		String uniqueID = UUID.randomUUID().toString();
		JSONObject eachObject = new JSONObject();
		
		eachObject.put("parent", parent_id);
		eachObject.put("id", uniqueID);
		eachObject.put("text", maindir.getName());
		eachObject.put("path", maindir.getAbsolutePath().replaceAll(flodePathString, ""));
		mainJson.add(eachObject);
		
		for (File file : files) {
			if (file.isDirectory() && (!file.getName().equalsIgnoreCase("answers") && !file.getName().equalsIgnoreCase("assets") && !file.getName().equalsIgnoreCase("audios") && !file.getName().equalsIgnoreCase("config") && !file.getName().equalsIgnoreCase("contrib") && !file.getName().equalsIgnoreCase("edutor_hotspots") && !file.getName().equalsIgnoreCase("extensions") && !file.getName().equalsIgnoreCase("fonts") && !file.getName().equalsIgnoreCase("jax") && !file.getName().equalsIgnoreCase("list-images") && !file.getName().equalsIgnoreCase("pdfs") && !file.getName().equalsIgnoreCase("script_images") && !file.getName().equalsIgnoreCase("static") )) {
				displayDirectoryContents(file,uniqueID);
			} else {/*
				if(file.getName().equals("index.html")&&!file.getAbsolutePath().contains("assets")) {
					indexFiles.add(file.getAbsoluteFile().getParent().replace(flodePathString, ""));
				}
			*/}
		}	
		System.out.println(mainJson);
	}
}
