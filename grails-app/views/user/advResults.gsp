<html>
<head>
  <title>Advanced Search Results</title>
  <meta name="layout" content="main"/>
</head>
<body>

  <h1>Advanced Results</h1>
  <p>Searched 
  for items matching <em>${term}</em>.
  Found <strong>${profiles.size()}</strong> hits.
  </p>
<!--  <ul>-->
<!--    <g:each var="profile" in="${profiles}">-->
<!--      <li><g:link controller="profile" action="show" id="${profile.id}">${profile.fullName}</g:link></li>-->
<!--    </g:each>-->
<!--  </ul>-->

  <table style="width:100%">
    <tr>
      <th>Login ID</th>
      <th>Name</th>
      <th>Homepage</th>
      <th>Email</th>
      <th>Country</th>
    </tr>
    <g:each var="profile" in="${profiles}">
      <tr>
        <td>${profile.user.loginId}</td>
        <td><g:link controller="profile" action="show" id="${profile.id}">${profile.fullName}</g:link></td>
        <td>${profile.user.homepage}</td>
        <td>${profile.email}</td>
        <td>${profile.country}</td>
      </tr>
    </g:each>
  </table>

  <g:actionSubmit value="Search Again" action="advSearch" />

</body>
</html>
