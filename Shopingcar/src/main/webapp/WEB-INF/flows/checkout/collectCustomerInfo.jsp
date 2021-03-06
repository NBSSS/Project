<%@include file="/WEB-INF/views/template/Header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="space"></div>
<div class="container">
	<h2 class="heading-one">Customer Details</h2>

	<form:form modelAttribute="order">

		<h3>Personal Info</h3>

		<div class="form-group">
			<label for="name">Name</label>
			<form:input path="customer.username" id="username" class="form-control" />
		</div>

		<div class="form-group">
			<label for="email">Email</label>
			<form:input path="customer.email" id="email" class="form-control" />
		</div>

		<div class="form-group">
			<label for="phone">Mobile No.</label>
			<form:input path="customer.mobileno" id="mobileno" class="form-control" />
		</div>

		<h3>Billing Address</h3>

		<div class="form-group">
			<label for="billingStreet">Street Name</label>
			<form:input path="customer.billingAddress.streetName"
				id="billingStreet" class="form-control" />
		</div>

		<div class="form-group">
			<label for="billingApartmentNumber">Apartment Number</label>
			<form:input path="customer.billingAddress.apartNo"
				id="billingApartmentNumber" class="form-control" />
		</div>

		<div class="form-group">
			<label for="billingCity">City</label>
			<form:input path="customer.billingAddress.city" id="billingCity"
				class="form-control" />
		</div>

		<div class="form-group">
			<label for="billingState">State</label>
			<form:input path="customer.billingAddress.state" id="billingState"
				class="form-control" />
		</div>

		<div class="form-group">
			<label for="billingCountry">Country</label>
			<form:input path="customer.billingAddress.country"
				id="billingCountry" class="form-control" />
		</div>

		<div class="form-group">
			<label for="billingZip">Zipcode</label>
			<form:input path="customer.billingAddress.zipcode" id="billingZip"
				class="form-control" />
		</div>

		<input type="hidden" name="_flowExecutionKey" />

		<br>
		<br>
		<input type="submit" value="Next" class="btn btn-outline-primary"
			name="_eventId_customerInfoCollected" />
		<button class="btn btn-default" name="_eventId_cancel">Cancel</button>
	</form:form>

</div>
