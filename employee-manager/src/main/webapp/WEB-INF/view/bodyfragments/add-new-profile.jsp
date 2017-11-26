<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%> --%>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<f:form action="#" cssClass="" modelAttribute="">
				<h3>Thông tin cá nhân</h3>
				<div class="form-group row">
					<label for="lastname-input" class="col-2 col-form-label">Họ
						đệm</label>
					<div class="col-10">
						<f:input id="lastname-input" cssClass="form-control" type="text" path="" />
					</div>
				</div>
				<div class="form-group row">
					<label for="firstname-input" class="col-2 col-form-label">Tên</label>
					<div class="col-10">
						<f:input id="firstname-input" cssClass="form-control" type="text" path="" />
					</div>
				</div>
				<div class="form-group row">
					<label for="date-of-birth-input" class="col-2 col-form-label">Ngày
						sinh</label>
					<div class="col-10">
						<f:input id="date-of-birth-input" path="" type="date" cssClass="form-control" />
					</div>
				</div>
				<div class="form-group row">
					<label for="render-input" class="col-2 col-form-label">Giới
						tính</label>
					<div class="col-10">
						<div class="form-check form-check-inline">
							<label class="form-check-label"> <f:radiobutton
									path="" value="male" label="Nam"
									cssClass="form-check-input" id="render-input" />
							</label>
						</div>
						<div class="form-check form-check-inline">
							<label class="form-check-label"> <f:radiobutton
									path="" value="female" label="Nữ"
									cssClass="form-check-input" id="render-input" />
							</label>
						</div>
					</div>
				</div>
				<div class="dropdown-divider my-5"></div>
				<h3>Thông tin liên lạc</h3>
				<div class="form-group row">
					<label for="home-town-input" class="col-2 col-form-label">Quê quán</label>
					<div class="col-10">
						<f:input id="home-town-input" cssClass="form-control" type="text" path="" />
					</div>
				</div>
				<div class="form-group row">
					<label for="address-input" class="col-2 col-form-label">Địa chỉ liên lạc</label>
					<div class="col-10">
						<f:input id="address-input" cssClass="form-control" type="text" path="" />
					</div>
				</div>
				<div class="form-group row">
					<label for="phone-number-input" class="col-2 col-form-label">Số điện thoại</label>
					<div class="col-10">
						<f:input id="phone-number-input" cssClass="form-control" type="text" path="" />
					</div>
				</div>
				<div class="form-group row">
					<label for="email-input" class="col-2 col-form-label">Mail</label>
					<div class="col-10">
						<f:input id="email-input" cssClass="form-control" type="text" path="" />
					</div>
				</div>
				<div class="dropdown-divider my-5"></div>
				<h3>Trình độ học vấn</h3>
				<div class="form-group row">
					<label for="certificate-type-input" class="col-2 col-form-label">Bằng cấp</label>
					<div class="col-10">
						<f:input id="certificate-type-input" cssClass="form-control" type="text" path="" />
					</div>
				</div>
				<div class="form-group row">
					<label for="grade-input" class="col-2 col-form-label">Xếp loại</label>
					<div class="col-10">
						<f:input id="grade-input" cssClass="form-control" type="text" path="" />
					</div>
				</div>
				<div class="form-group row">
					<label for="major-input" class="col-2 col-form-label">Chuyên ngành</label>
					<div class="col-10">
						<f:input id="major-input" cssClass="form-control" type="text" path="" />
					</div>
				</div>
				<div class="form-group row">
					<label for="foreign-language-input" class="col-2 col-form-label">Ngoại ngữ</label>
					<div class="col-10">
						<f:input id="foreign-language-input" cssClass="form-control" type="text" path="" />
					</div>
				</div>
				<div class="dropdown-divider my-5"></div>
				<h3>Thông tin khác</h3>
				<div class="form-group row">
					<label for="identity-card-number-input" class="col-2 col-form-label">Số CMND</label>
					<div class="col-10">
						<f:input id="identity-card-number-input" cssClass="form-control" type="text" path="" />
					</div>
				</div>
				<div class="form-group row">
					<label for="nation-input" class="col-2 col-form-label">Dân tộc</label>
					<div class="col-10">
						<f:input id="nation-input" cssClass="form-control" type="text" path="" />
					</div>
				</div>
				<div class="form-group row">
					<label for="religion-input" class="col-2 col-form-label">Tôn giáo</label>
					<div class="col-10">
						<f:input id="religion-input" cssClass="form-control" type="text" path="" />
					</div>
				</div>
				<div class="dropdown-divider my-5"></div>
				<h3>Giới thiệu bản thân</h3>
				<div class="form-group row">
					<label for="introduce-yourself" class="col-2 col-form-label">Giới thiệu</label>
					<div class="col-10">
						<f:textarea id="introduce-yourself" cssClass="form-control" type="text" path="" />
					</div>
				</div>
				<div class="dropdown-divider my-5"></div>
			</f:form>
		</div>
	</div>
</div>
