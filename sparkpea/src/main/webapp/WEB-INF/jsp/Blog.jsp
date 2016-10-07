<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


<div data-ng-controller="BlogController">
	<sec:authorize access="isAuthenticated()">
		<form role="form" data-ng-submit="submit()"
			data-ng-controller="BlogController">
			<h3  style="color: #000000;font-family:algerian" align="center">Create Blog</h3>
			<div class="form-group">
				<input type="text" class="form-control input-sm"
					placeholder="Blog Id" data-ng-model="blogid" data-ng-show="blogid"
					data-ng-disabled="blogid">
			</div>
			<div class="form-group">
			<label for="formdata" style="color: #000000;font-family:ms serif" >Blog title</label>
				<input type="text" class="form-control input-sm"
					placeholder="Blog Title" data-ng-model="blogName">
			</div>
			<div class="form-group">
				<label for="formdata" style="color: #000000;font-family:ms serif">Blog Description</label>
				<textarea draggable="false" style="resize: none" id="formdata"
					class="form-control " rows="13" data-ng-model="blogDesc"></textarea>
			</div>
			<div align="right">
				<button type="submit" class="btn btn-info btn-block" style="color: white;font-family:latha">Save Blog</button>
			</div>
		</form>
	</sec:authorize>
	<br>
	<div data-ng-init="getAllBlogs()">
		<table class="table table-bordered table-hover">
			<thead>
				<tr style="color: #000000;font-family:ms serif">
					<!-- <th>Blog ID</th> -->
					<th>Blog Name</th>
					<th colspan="2">Blog Description</th>

				</tr>
			</thead>
			<tbody>
				<tr data-ng-repeat="blog in blogs" style="color: #000000;font-family:ms serif">
					<!-- 	<td>{{blog.bid}}</td> -->
					<td width="15%">{{blog.blogName}}</td>
					<td width="70%">{{blog.blogDesc}}</td>
					<td width="15%">
						<div class="btn-group  btn-group-justified ">
							<sec:authorize access="isAuthenticated()">
							<div data-ng-if="accessBlog(blog.b_userid)">
							
								<a class="btn btn-info btn-xs"
									data-ng-click="deleteBlog(blog.bid)">Delete</a>

								<a class="btn btn-info btn-xs"
									data-ng-click="editBlog(blog.bid)">Edit</a>
									</div>
							</sec:authorize>
							
						</div>
					</td>
<td width="5%"><a href="blog/{{blog.bid}}" class="btn btn-primary btn-xs">View</a></td>
				</tr>
			</tbody>
		</table>
	</div>

			<input type="text" value="${sessionScope.userid}" style="margin-top: 75px" id="userid" hidden="true" />
			<input type="text" value="${sessionScope.userid}" style="margin-top: 75px" id="userid" hidden="true" />
 <script src="${pageContext.request.contextPath}/resources/js/AngularControllers/Blog.js"></script>
  


