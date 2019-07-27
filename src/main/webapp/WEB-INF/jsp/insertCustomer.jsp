<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf"%>

<form:form method="post" commandName="customer">
<div>${error}</div>
<form:label path="code">code</form:label>
<form:input path="code" type="text" />
<form:errors path="code" />
<form:label path="licNo">licNo</form:label>
<form:input path="licNo" type="text" />
<form:label path="custName">custName</form:label>
<form:input path="custName" type="text" />
<form:label path="tinNo">tinNo</form:label>
<form:input path="tinNo" type="text" />
<form:label path="gstNo">gstNo</form:label>
<form:input path="gstNo" type="text" />
<form:label path="validDt">validDt</form:label>
<form:input path="validDt" type="date" />
<form:label path="stateCode">stateCode</form:label>
<form:input path="stateCode" type="text" />
<form:label path="docNo">docNo</form:label>
<form:input path="docNo" type="text" />


<form:label path="billingAddress.syNo">syNo</form:label>
<form:input path="billingAddress.syNo" type="text" />
<form:label path="billingAddress.town">town</form:label>
<form:input path="billingAddress.town" type="text" />
<form:label path="billingAddress.mandal">mandal</form:label>
<form:input path="billingAddress.mandal" type="text" />
<form:label path="billingAddress.district">district</form:label>
<form:input path="billingAddress.district" type="text" />
<form:label path="billingAddress.state">state</form:label>
<form:input path="billingAddress.state" type="text" />
<form:label path="billingAddress.phone">phone</form:label>
<form:input path="billingAddress.phone" type="text" />

<form:label path="shippingAddress.syNo">syNo</form:label>
<form:input path="shippingAddress.syNo" type="text" />
<form:label path="shippingAddress.town">town</form:label>
<form:input path="shippingAddress.town" type="text" />
<form:label path="shippingAddress.mandal">mandal</form:label>
<form:input path="shippingAddress.mandal" type="text" />
<form:label path="shippingAddress.district">district</form:label>
<form:input path="shippingAddress.district" type="text" />
<form:label path="shippingAddress.state">state</form:label>
<form:input path="shippingAddress.state" type="text" />
<form:label path="shippingAddress.phone">phone</form:label>
<form:input path="shippingAddress.phone" type="text" />

<button type="submit" >Add</button>
</form:form>
