<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="common/header.jspf" %>

 <form:form method="post" commandName="vehicle">
 <div>${error}</div>
<form:label path="vehicleNo">vehicleNo</form:label>
<form:input path="vehicleNo" type="text" />
<form:errors path="vehicleNo" />
<form:label path="licence">licence</form:label>
<form:input path="licence" type="text" />
<form:label path="validDate">validDate</form:label>
<form:input path="validDate" type="date" />

<form:label path="capacity">capacity</form:label>
<form:input path="capacity" type="text" />
<form:label path="ownName">ownName</form:label>
<form:input path="ownName" type="text"/>
<form:label path="noCases">noCases</form:label>
<form:input path="noCases" type="text" />
<form:label path="edCases">edCases</form:label>
<form:input path="edCases" type="text" />
<button type="submit">Add</button>
 </form:form>   