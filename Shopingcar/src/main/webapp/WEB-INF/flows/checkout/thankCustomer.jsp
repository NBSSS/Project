<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/Header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Thank you for your business!</h1>

                    <p>Your order will be shipped in two business days!</p>
                </div>
            </div>
        </section>

        <section class="container">
            <p>
                <a href="<spring:url value="/" />" class="btn btn-primary"><i class="fa fa-thumbs-up"></i> OK</a>
            </p>
        </section>

    </div>
</div>

