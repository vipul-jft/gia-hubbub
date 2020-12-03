<html>
<head>
    <title>Search Results</title>
    <meta name="layout" content="main"/>
</head>
<body>
    <h1>Results</h1>
    <p>
        Searched ${totalUsers} records
        for items matching <em>${term}</em>.
        Found <strong>${users.size()}</strong> hits.
    </p>
    <!--    <ul>-->
    <!--        <g:each var="user" in="${users}">-->
    <!--            <li>${user.loginId}</li>-->
    <!--            <li>${user.profile.fullName}</li>-->
    <!--            <li>${user.loginId}</li>-->
    <!--        </g:each>-->
    <!--    </ul>-->
    <table style="width:100%">
        <tr>
            <th>Login ID</th>
            <th>Name</th>
            <th>Homepage</th>
            <th>Email</th>
            <th>Country</th>
        </tr>
        <g:each var="user" in="${users}">
            <tr>
                <td>${user.loginId}</td>
                <td>${user.profile.fullName}</td>
                <td>${user.homepage}</td>
                <td>${user.profile.email}</td>
                <td>${user.profile.country}</td>
            </tr>
        </g:each>
    </table>

    <g:actionSubmit value="Search Again" action="search" />
<!--    <g:link action='search'>Search Again</g:link>-->
</body>
</html>