<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="">
<meta name="description" content="">
<title>ErrandList</title>
<link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
<link rel="stylesheet" href="assets/css/ErrandList.css" media="screen">
<script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="nicepage.js"
	defer=""></script>
<meta name="generator" content="Nicepage 6.0.3, nicepage.com">

<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">



<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="ErrandList">
<meta property="og:description" content="">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="./" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en" style="backgrond-color:"#ff9962">
	<header class="u-clearfix u-header" id="sec-9269"
		data-animation-name="" data-animation-duration="0"
		data-animation-delay="0" data-animation-direction="">
		<div class="u-clearfix u-sheet u-sheet-1">
			<a href="RequireErrand.jsp"
				class="u-border-none u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-1"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">심부름 요청</a> <img
				class="u-image u-image-contain u-image-default u-image-1"
				src="images/222.png" alt="" data-image-width="464"
				data-image-height="390" data-href="Main.jsp"> <a
				href="ErrandListService"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-2"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">심부름 목록</a> <a
				href="Ranking.jsp"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-3"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">&nbsp;랭킹&nbsp;</a>
			<a href="ChatListService"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-4"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">채팅</a> <a
				href="Charge.jsp"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-5"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">충전</a> <a
				href="MyInfoService"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-6"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">마이 페이지</a>
		</div>
	</header>
	<section class="u-section-2"></section>
	<section class="u-align-center u-clearfix u-section-1" id="sec-d22e">
		<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
			<div class="u-expanded-width u-tab-links-align-left u-tabs u-tabs-1">
				<ul class="u-spacing-10 u-tab-list u-unstyled" role="tablist" style="margin-left:30px">
					<li class="u-tab-item" role="presentation"><a
						class="active u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-1"
						id="link-tab-14b7" href="#tab-14b7" role="tab"
						aria-controls="tab-14b7" aria-selected="true">전체</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-2"
						id="link-tab-20d6" href="#tab-20d6" role="tab"
						aria-controls="tab-20d6" aria-selected="false">광산구</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-3"
						id="link-tab-52f2" href="#tab-52f2" role="tab"
						aria-controls="tab-52f2" aria-selected="false">동구</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-4"
						id="link-tab-b2d7" href="#tab-b2d7" role="tab"
						aria-controls="tab-b2d7" aria-selected="false">서구</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-5"
						id="link-tab-ad66" href="#tab-ad66" role="tab"
						aria-controls="tab-ad66" aria-selected="false">남구</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-6"
						id="link-tab-0273" href="#tab-0273" role="tab"
						aria-controls="tab-0273" aria-selected="false">북구</a></li>
				</ul>
				<div class="u-tab-content">
					<div
						class="u-container-style u-tab-active u-tab-pane u-white u-tab-pane-1"
						id="tab-14b7" role="tabpanel" aria-labelledby="link-tab-14b7">
						<div class="u-container-layout u-container-layout-1">
							<div
								class="custom-expanded u-container-style u-group u-white u-group-1">
								<div class="u-container-layout u-container-layout-2">
									<div class="u-expanded-width u-tabs u-tabs-2" >
										<ul class="u-tab-list u-unstyled" role="tablist" style="margin-left:35px">
											<li class="u-tab-item" role="presentation"><a
												class="active u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-7"
												id="link-tab-3d4a" href="#tab-3d4a" role="tab"
												aria-controls="tab-3d4a" aria-selected="true">전체</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-8"
												id="link-tab-8868" href="#tab-8868" role="tab"
												aria-controls="tab-8868" aria-selected="false">배달/장보기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-9"
												id="link-tab-2ccd" href="#tab-2ccd" role="tab"
												aria-controls="tab-2ccd" aria-selected="false">청소/집안일</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-10"
												id="link-tab-12d0" href="#tab-12d0" role="tab"
												aria-controls="tab-12d0" aria-selected="false">설치/조립/운반</a>
											</li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-11"
												id="link-tab-3347" href="#tab-3347" role="tab"
												aria-controls="tab-3347" aria-selected="false">동행/돌봄</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-12"
												id="link-tab-4020" href="#tab-4020" role="tab"
												aria-controls="tab-4020" aria-selected="false">벌레/쥐잡기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-13"
												id="link-tab-fda4" href="#tab-fda4" role="tab"
												aria-controls="tab-fda4" aria-selected="false">역할대행</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-14"
												id="link-tab-a893" href="#tab-a893" role="tab"
												aria-controls="tab-a893" aria-selected="false">운전/카풀</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-15"
												id="link-tab-e73d" href="#tab-e73d" role="tab"
												aria-controls="tab-e73d" aria-selected="false">과외/알바</a></li>
										</ul>
										<div class="u-tab-content">
											<div class="u-container-style u-tab-active u-tab-pane"
												id="tab-3d4a" role="tabpanel"
												aria-labelledby="link-tab-3d4a">
												<div class="u-container-layout u-container-layout-3"
													style="padding: 50px; padding-top: 0px; width: 1300px">
													<table class="wrap-table">
														<tr>
															<td>
																<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<!-- 10:49 수정 시작 -->
																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<table id="wrap__table2" class="wrap-table2" border="solid">
																				<tr>
																					<th colspan="3"><a
																						href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																							<h1 id="wrap__h11" class="wrap_h1" >${errand.title}</h1>
																					</a></th>
																					<th class="th" colspan="2">
																					<c:choose>
																							<c:when test='${fn:contains(errand.status, "0")}'>
																								<span>매칭 대기중</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "1")}'>
																								<span>매칭 완료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "2")}'>
																								<span>매칭 종료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "3")}'>
																								<span>종료</span>
																							</c:when>
																						</c:choose></th>
																				</tr>
																				<tr>
																					<td id="number" style="text-align: center">No.
																						${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임
																						: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																			</table>
																		</c:forEach>

																		<!-- 10:49 수정 끝 -->
																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-8868"
												role="tabpanel" aria-labelledby="link-tab-8868">
												<div class="u-container-layout u-container-layout-4"
												style="padding: 50px; padding-top: 0px; width: 1300px">
													<!-- 전체 -> 배달 장보기 -->
													<table class="wrap-table">
														<tr>
															<td>
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '배달/장보기'}">
																			<table id="wrap__table2" class="wrap-table2" border="solid">
																				<tr>
																					<th colspan="3"><a
																						href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																							<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																					</a></th>
																					<th class="th" colspan="2"><c:choose>
																							<c:when test='${fn:contains(errand.status, "0")}'>
																								<span>매칭대기중</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "1")}'>
																								<span>매칭완료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "2")}'>
																								<span>매칭종료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "3")}'>
																								<span>종료</span>
																							</c:when>
																						</c:choose></th>
																				</tr>
																				<tr>
																					<td id="number" style="text-align: center">No.
																						${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임
																						: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																			</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-2ccd"
												role="tabpanel" aria-labelledby="link-tab-2ccd">
												<div class="u-container-layout u-container-layout-5"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">
														<tr>
															<td>
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '청소/집안일'}">
																			<table id="wrap__table2" class="wrap-table2" border="solid">
																				<tr>
																					<th colspan="3"><a
																						href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																							<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																					</a></th>
																					<th class="th" colspan="2"><c:choose>
																							<c:when test='${fn:contains(errand.status, "0")}'>
																								<span>매칭대기중</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "1")}'>
																								<span>매칭완료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "2")}'>
																								<span>매칭종료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "3")}'>
																								<span>종료</span>
																							</c:when>
																						</c:choose></th>
																				</tr>
																				<tr>
																					<td id="number" style="text-align: center">No.
																						${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임
																						: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																			</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-12d0"
												role="tabpanel" aria-labelledby="link-tab-12d0">
												<div class="u-container-layout u-container-layout-6"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">
														<tr>
															<td>
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '설치/조립/운반'}">
																			<table id="wrap__table2" class="wrap-table2" border="solid">
																				<tr>
																					<th colspan="3"><a
																						href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																							<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																					</a></th>
																					<th class="th" colspan="2"><c:choose>
																							<c:when test='${fn:contains(errand.status, "0")}'>
																								<span>매칭대기중</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "1")}'>
																								<span>매칭완료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "2")}'>
																								<span>매칭종료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "3")}'>
																								<span>종료</span>
																							</c:when>
																						</c:choose></th>
																				</tr>
																				<tr>
																					<td id="number" style="text-align: center">No.
																						${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임
																						: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																			</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-3347"
												role="tabpanel" aria-labelledby="link-tab-3347">
												<div class="u-container-layout u-container-layout-7"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">
														<tr>
															<td>
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '동행/돌봄'}">
																			<table id="wrap__table2" class="wrap-table2" border="solid">
																				<tr>
																					<th colspan="3"><a
																						href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																							<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																					</a></th>
																					<th class="th" colspan="2"><c:choose>
																							<c:when test='${fn:contains(errand.status, "0")}'>
																								<span>매칭대기중</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "1")}'>
																								<span>매칭완료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "2")}'>
																								<span>매칭종료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "3")}'>
																								<span>종료</span>
																							</c:when>
																						</c:choose></th>
																				</tr>
																				<tr>
																					<td id="number" style="text-align: center">No.
																						${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임
																						: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																			</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-4020"
												role="tabpanel" aria-labelledby="link-tab-4020">
												<div class="u-container-layout u-container-layout-8"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">
														<tr>
															<td>
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '벌레/쥐잡기'}">
																			<table id="wrap__table2" class="wrap-table2" border="solid">
																				<tr>
																					<th colspan="3"><a
																						href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																							<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																					</a></th>
																					<th class="th" colspan="2"><c:choose>
																							<c:when test='${fn:contains(errand.status, "0")}'>
																								<span>매칭대기중</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "1")}'>
																								<span>매칭완료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "2")}'>
																								<span>매칭종료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "3")}'>
																								<span>종료</span>
																							</c:when>
																						</c:choose></th>
																				</tr>
																				<tr>
																					<td id="number" style="text-align: center">No.
																						${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임
																						: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																			</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-fda4"
												role="tabpanel" aria-labelledby="link-tab-fda4">
												<div class="u-container-layout u-container-layout-9"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">
														<tr>
															<td>
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '역할대행'}">
																			<table id="wrap__table2" class="wrap-table2" border="solid">
																				<tr>
																					<th colspan="3"><a
																						href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																							<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																					</a></th>
																					<th class="th" colspan="2"><c:choose>
																							<c:when test='${fn:contains(errand.status, "0")}'>
																								<span>매칭대기중</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "1")}'>
																								<span>매칭완료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "2")}'>
																								<span>매칭종료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "3")}'>
																								<span>종료</span>
																							</c:when>
																						</c:choose></th>
																				</tr>
																				<tr>
																					<td id="number" style="text-align: center">No.
																						${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임
																						: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																			</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-a893"
												role="tabpanel" aria-labelledby="link-tab-a893">
												<div class="u-container-layout u-container-layout-10"
												style="padding: 50px; padding-top: 0px; width: 1300px">


													<table class="wrap-table">
														<tr>
															<td>
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '운전/카풀'}">
																			<table id="wrap__table2" class="wrap-table2" border="solid">
																				<tr>
																					<th colspan="3"><a
																						href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																							<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																					</a></th>
																					<th class="th" colspan="2"><c:choose>
																							<c:when test='${fn:contains(errand.status, "0")}'>
																								<span>매칭대기중</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "1")}'>
																								<span>매칭완료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "2")}'>
																								<span>매칭종료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "3")}'>
																								<span>종료</span>
																							</c:when>
																						</c:choose></th>
																				</tr>
																				<tr>
																					<td id="number" style="text-align: center">No.
																						${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임
																						: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																			</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-e73d"
												role="tabpanel" aria-labelledby="link-tab-e73d">
												<div class="u-container-layout u-container-layout-11"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">
														<tr>
															<td>
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '과외/알바'}">
																			<table id="wrap__table2" class="wrap-table2" border="solid">
																				<tr>
																					<th colspan="3"><a
																						href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																							<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																					</a></th>
																					<th class="th" colspan="2"><c:choose>
																							<c:when test='${fn:contains(errand.status, "0")}'>
																								<span>매칭대기중</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "1")}'>
																								<span>매칭완료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "2")}'>
																								<span>매칭종료</span>
																							</c:when>
																							<c:when test='${fn:contains(errand.status, "3")}'>
																								<span>종료</span>
																							</c:when>
																						</c:choose></th>
																				</tr>
																				<tr>
																					<td id="number" style="text-align: center">No.
																						${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임
																						: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																			</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="u-container-style u-tab-pane u-white u-tab-pane-11"
						id="tab-20d6" role="tabpanel" aria-labelledby="link-tab-20d6">
						<div class="u-container-layout u-container-layout-12">
							<div
								class="custom-expanded u-container-style u-group u-white u-group-2">
								<div class="u-container-layout u-container-layout-13">
									<div class="u-expanded-width u-tabs u-tabs-3">
										<ul class="u-tab-list u-unstyled" role="tablist" style="margin-left:35px">
											<li class="u-tab-item" role="presentation"><a
												class="active u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-16"
												id="link-tab-3d4a" href="#tab-3d4a" role="tab"
												aria-controls="tab-3d4a" aria-selected="true">전체</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-17"
												id="link-tab-8868" href="#tab-8868" role="tab"
												aria-controls="tab-8868" aria-selected="false">배달/장보기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-18"
												id="link-tab-2ccd" href="#tab-2ccd" role="tab"
												aria-controls="tab-2ccd" aria-selected="false">청소/집안일</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-19"
												id="link-tab-12d0" href="#tab-12d0" role="tab"
												aria-controls="tab-12d0" aria-selected="false">설치/조립/운반</a>
											</li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-20"
												id="link-tab-3347" href="#tab-3347" role="tab"
												aria-controls="tab-3347" aria-selected="false">동행/돌봄</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-21"
												id="link-tab-4020" href="#tab-4020" role="tab"
												aria-controls="tab-4020" aria-selected="false">벌레/쥐잡기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-22"
												id="link-tab-fda4" href="#tab-fda4" role="tab"
												aria-controls="tab-fda4" aria-selected="false">역할대행</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-23"
												id="link-tab-a893" href="#tab-a893" role="tab"
												aria-controls="tab-a893" aria-selected="false">운전/카풀</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-24"
												id="link-tab-e73d" href="#tab-e73d" role="tab"
												aria-controls="tab-e73d" aria-selected="false">과외/알바</a></li>
										</ul>
										<div class="u-tab-content">
											<div class="u-container-style u-tab-active u-tab-pane"
												id="tab-3d4a" role="tabpanel"
												aria-labelledby="link-tab-3d4a">
												<div class="u-container-layout u-container-layout-14"
												style="padding: 50px; padding-top: 0px; width: 1300px">
													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.location_ctgr eq '광산구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-8868"
												role="tabpanel" aria-labelledby="link-tab-8868">
												<div class="u-container-layout u-container-layout-15"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '배달/장보기'&& errand.location_ctgr eq '광산구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.
																						${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임
																						: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-2ccd"
												role="tabpanel" aria-labelledby="link-tab-2ccd">
												<div class="u-container-layout u-container-layout-16"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '청소/집안일'&& errand.location_ctgr eq '광산구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.
																						${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임
																						: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-12d0"
												role="tabpanel" aria-labelledby="link-tab-12d0">
												<div class="u-container-layout u-container-layout-17"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '설치/조립/운반'&& errand.location_ctgr eq '광산구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.
																						${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임
																						: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-3347"
												role="tabpanel" aria-labelledby="link-tab-3347">
												<div class="u-container-layout u-container-layout-18"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '동행/돌봄'&& errand.location_ctgr eq '광산구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.
																						${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임
																						: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-4020"
												role="tabpanel" aria-labelledby="link-tab-4020">
												<div class="u-container-layout u-container-layout-19"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '벌레/쥐잡기'&& errand.location_ctgr eq '광산구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.
																						${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임
																						: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-fda4"
												role="tabpanel" aria-labelledby="link-tab-fda4">
												<div class="u-container-layout u-container-layout-20"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '역할대행'&& errand.location_ctgr eq '광산구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.
																						${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임
																						: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-a893"
												role="tabpanel" aria-labelledby="link-tab-a893">
												<div class="u-container-layout u-container-layout-21"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '운전/카풀'&& errand.location_ctgr eq '광산구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.
																						${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임
																						: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-e73d"
												role="tabpanel" aria-labelledby="link-tab-e73d">
												<div class="u-container-layout u-container-layout-22"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '과외/알바'&& errand.location_ctgr eq '광산구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.
																						${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임
																						: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="u-container-style u-tab-pane u-white u-tab-pane-21"
						id="tab-52f2" role="tabpanel" aria-labelledby="link-tab-52f2">
						<div class="u-container-layout u-container-layout-23">
							<div
								class="custom-expanded u-container-style u-group u-white u-group-3">
								<div class="u-container-layout u-container-layout-24">
									<div class="u-expanded-width u-tabs u-tabs-4">
										<ul class="u-tab-list u-unstyled" role="tablist" style="margin-left:35px">
											<li class="u-tab-item" role="presentation"><a
												class="active u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-25"
												id="link-tab-3d4a" href="#tab-3d4a" role="tab"
												aria-controls="tab-3d4a" aria-selected="true">전체</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-26"
												id="link-tab-8868" href="#tab-8868" role="tab"
												aria-controls="tab-8868" aria-selected="false">배달/장보기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-27"
												id="link-tab-2ccd" href="#tab-2ccd" role="tab"
												aria-controls="tab-2ccd" aria-selected="false">청소/집안일</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-28"
												id="link-tab-12d0" href="#tab-12d0" role="tab"
												aria-controls="tab-12d0" aria-selected="false">설치/조립/운반</a>
											</li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-29"
												id="link-tab-3347" href="#tab-3347" role="tab"
												aria-controls="tab-3347" aria-selected="false">동행/돌봄</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-30"
												id="link-tab-4020" href="#tab-4020" role="tab"
												aria-controls="tab-4020" aria-selected="false">벌레/쥐잡기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-31"
												id="link-tab-fda4" href="#tab-fda4" role="tab"
												aria-controls="tab-fda4" aria-selected="false">역할대행</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-32"
												id="link-tab-a893" href="#tab-a893" role="tab"
												aria-controls="tab-a893" aria-selected="false">운전/카풀</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-33"
												id="link-tab-e73d" href="#tab-e73d" role="tab"
												aria-controls="tab-e73d" aria-selected="false">과외/알바</a></li>
										</ul>
										<div class="u-tab-content">
											<div class="u-container-style u-tab-active u-tab-pane"
												id="tab-3d4a" role="tabpanel"
												aria-labelledby="link-tab-3d4a">
												<div class="u-container-layout u-container-layout-25"
												style="padding: 50px; padding-top: 0px; width: 1300px">
													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.location_ctgr eq '동구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-8868"
												role="tabpanel" aria-labelledby="link-tab-8868">
												<div class="u-container-layout u-container-layout-26"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '배달/장보기'&& errand.location_ctgr eq '동구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-2ccd"
												role="tabpanel" aria-labelledby="link-tab-2ccd">
												<div class="u-container-layout u-container-layout-27"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '청소/집안일'&& errand.location_ctgr eq '동구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-12d0"
												role="tabpanel" aria-labelledby="link-tab-12d0">
												<div class="u-container-layout u-container-layout-28"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '설치/조립/운반'&& errand.location_ctgr eq '동구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-3347"
												role="tabpanel" aria-labelledby="link-tab-3347">
												<div class="u-container-layout u-container-layout-29"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '동행/돌봄'&& errand.location_ctgr eq '동구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-4020"
												role="tabpanel" aria-labelledby="link-tab-4020">
												<div class="u-container-layout u-container-layout-30"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '벌레/쥐잡기'&& errand.location_ctgr eq '동구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-fda4"
												role="tabpanel" aria-labelledby="link-tab-fda4">
												<div class="u-container-layout u-container-layout-31"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '역할대행'&& errand.location_ctgr eq '동구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-a893"
												role="tabpanel" aria-labelledby="link-tab-a893">
												<div class="u-container-layout u-container-layout-32"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '운전/카풀'&& errand.location_ctgr eq '동구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-e73d"
												role="tabpanel" aria-labelledby="link-tab-e73d">
												<div class="u-container-layout u-container-layout-33"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '과외/알바'&& errand.location_ctgr eq '동구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="u-container-style u-tab-pane u-white u-tab-pane-31"
						id="tab-b2d7" role="tabpanel" aria-labelledby="link-tab-b2d7">
						<div class="u-container-layout u-container-layout-34">
							<div
								class="custom-expanded u-container-style u-group u-white u-group-4">
								<div class="u-container-layout u-container-layout-35">
									<div class="u-expanded-width u-tabs u-tabs-5">
										<ul class="u-tab-list u-unstyled" role="tablist" style="margin-left:35px">
											<li class="u-tab-item" role="presentation"><a
												class="active u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-34"
												id="link-tab-3d4a" href="#tab-3d4a" role="tab"
												aria-controls="tab-3d4a" aria-selected="true">전체</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-35"
												id="link-tab-8868" href="#tab-8868" role="tab"
												aria-controls="tab-8868" aria-selected="false">배달/장보기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-36"
												id="link-tab-2ccd" href="#tab-2ccd" role="tab"
												aria-controls="tab-2ccd" aria-selected="false">청소/집안일</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-37"
												id="link-tab-12d0" href="#tab-12d0" role="tab"
												aria-controls="tab-12d0" aria-selected="false">설치/조립/운반</a>
											</li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-38"
												id="link-tab-3347" href="#tab-3347" role="tab"
												aria-controls="tab-3347" aria-selected="false">동행/돌봄</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-39"
												id="link-tab-4020" href="#tab-4020" role="tab"
												aria-controls="tab-4020" aria-selected="false">벌레/쥐잡기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-40"
												id="link-tab-fda4" href="#tab-fda4" role="tab"
												aria-controls="tab-fda4" aria-selected="false">역할대행</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-41"
												id="link-tab-a893" href="#tab-a893" role="tab"
												aria-controls="tab-a893" aria-selected="false">운전/카풀</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-42"
												id="link-tab-e73d" href="#tab-e73d" role="tab"
												aria-controls="tab-e73d" aria-selected="false">과외/알바</a></li>
										</ul>
										<div class="u-tab-content">
											<div class="u-container-style u-tab-active u-tab-pane"
												id="tab-3d4a" role="tabpanel"
												aria-labelledby="link-tab-3d4a">
												<div class="u-container-layout u-container-layout-36"
												style="padding: 50px; padding-top: 0px; width: 1300px">
													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.location_ctgr eq '서구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-8868"
												role="tabpanel" aria-labelledby="link-tab-8868">
												<div class="u-container-layout u-container-layout-37"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '배달/장보기'&& errand.location_ctgr eq '서구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-2ccd"
												role="tabpanel" aria-labelledby="link-tab-2ccd">
												<div class="u-container-layout u-container-layout-38"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '청소/집안일'&& errand.location_ctgr eq '서구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-12d0"
												role="tabpanel" aria-labelledby="link-tab-12d0">
												<div class="u-container-layout u-container-layout-39"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '설치/조립/운반'&& errand.location_ctgr eq '서구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-3347"
												role="tabpanel" aria-labelledby="link-tab-3347">
												<div class="u-container-layout u-container-layout-40"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '동행/돌봄'&& errand.location_ctgr eq '서구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-4020"
												role="tabpanel" aria-labelledby="link-tab-4020">
												<div class="u-container-layout u-container-layout-41"
												style="padding: 50px; padding-top: 0px; width: 1300px">

												<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '벌레/쥐잡기'&& errand.location_ctgr eq '서구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-fda4"
												role="tabpanel" aria-labelledby="link-tab-fda4">
												<div class="u-container-layout u-container-layout-42"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '역할대행'&& errand.location_ctgr eq '서구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-a893"
												role="tabpanel" aria-labelledby="link-tab-a893">
												<div class="u-container-layout u-container-layout-43"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '운전/카풀'&& errand.location_ctgr eq '서구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-e73d"
												role="tabpanel" aria-labelledby="link-tab-e73d">
												<div class="u-container-layout u-container-layout-44"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '과외/알바'&& errand.location_ctgr eq '서구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="u-container-style u-tab-pane u-white u-tab-pane-41"
						id="tab-ad66" role="tabpanel" aria-labelledby="link-tab-ad66">
						<div class="u-container-layout u-container-layout-45">
							<div
								class="custom-expanded u-container-style u-group u-white u-group-5">
								<div class="u-container-layout u-container-layout-46">
									<div class="u-expanded-width u-tabs u-tabs-6">
										<ul class="u-tab-list u-unstyled" role="tablist" style="margin-left:35px">
											<li class="u-tab-item" role="presentation"><a
												class="active u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-43"
												id="link-tab-3d4a" href="#tab-3d4a" role="tab"
												aria-controls="tab-3d4a" aria-selected="true">전체</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-44"
												id="link-tab-8868" href="#tab-8868" role="tab"
												aria-controls="tab-8868" aria-selected="false">배달/장보기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-45"
												id="link-tab-2ccd" href="#tab-2ccd" role="tab"
												aria-controls="tab-2ccd" aria-selected="false">청소/집안일</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-46"
												id="link-tab-12d0" href="#tab-12d0" role="tab"
												aria-controls="tab-12d0" aria-selected="false">설치/조립/운반</a>
											</li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-47"
												id="link-tab-3347" href="#tab-3347" role="tab"
												aria-controls="tab-3347" aria-selected="false">동행/돌봄</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-48"
												id="link-tab-4020" href="#tab-4020" role="tab"
												aria-controls="tab-4020" aria-selected="false">벌레/쥐잡기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-49"
												id="link-tab-fda4" href="#tab-fda4" role="tab"
												aria-controls="tab-fda4" aria-selected="false">역할대행</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-50"
												id="link-tab-a893" href="#tab-a893" role="tab"
												aria-controls="tab-a893" aria-selected="false">운전/카풀</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-51"
												id="link-tab-e73d" href="#tab-e73d" role="tab"
												aria-controls="tab-e73d" aria-selected="false">과외/알바</a></li>
										</ul>
										<div class="u-tab-content">
											<div class="u-container-style u-tab-active u-tab-pane"
												id="tab-3d4a" role="tabpanel"
												aria-labelledby="link-tab-3d4a">
												<div class="u-container-layout u-container-layout-47"
												style="padding: 50px; padding-top: 0px; width: 1300px">
													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.location_ctgr eq '남구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-8868"
												role="tabpanel" aria-labelledby="link-tab-8868">
												<div class="u-container-layout u-container-layout-48"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '배달/장보기'&& errand.location_ctgr eq '남구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-2ccd"
												role="tabpanel" aria-labelledby="link-tab-2ccd">
												<div class="u-container-layout u-container-layout-49"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '청소/집안일'&& errand.location_ctgr eq '남구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-12d0"
												role="tabpanel" aria-labelledby="link-tab-12d0">
												<div class="u-container-layout u-container-layout-50"
												style="padding: 50px; padding-top: 0px; width: 1300px">
<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '설치/조립/운반'&& errand.location_ctgr eq '남구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-3347"
												role="tabpanel" aria-labelledby="link-tab-3347">
												<div class="u-container-layout u-container-layout-51"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '동행/돌봄'&& errand.location_ctgr eq '남구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-4020"
												role="tabpanel" aria-labelledby="link-tab-4020">
												<div class="u-container-layout u-container-layout-52"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '벌레/쥐잡기'&& errand.location_ctgr eq '남구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-fda4"
												role="tabpanel" aria-labelledby="link-tab-fda4">
												<div class="u-container-layout u-container-layout-53"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '역할대행'&& errand.location_ctgr eq '남구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-a893"
												role="tabpanel" aria-labelledby="link-tab-a893">
												<div class="u-container-layout u-container-layout-54"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '운전/카풀'&& errand.location_ctgr eq '남구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-e73d"
												role="tabpanel" aria-labelledby="link-tab-e73d">
												<div class="u-container-layout u-container-layout-55"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '과외/알바'&& errand.location_ctgr eq '남구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="u-container-style u-tab-pane u-white u-tab-pane-51"
						id="tab-0273" role="tabpanel" aria-labelledby="link-tab-0273">
						<div class="u-container-layout u-container-layout-56">
							<div
								class="custom-expanded u-container-style u-group u-white u-group-6">
								<div class="u-container-layout u-container-layout-57">
									<div class="u-expanded-width u-tabs u-tabs-7">
										<ul class="u-tab-list u-unstyled" role="tablist" style="margin-left:35px">
											<li class="u-tab-item" role="presentation"><a
												class="active u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-52"
												id="link-tab-3d4a" href="#tab-3d4a" role="tab"
												aria-controls="tab-3d4a" aria-selected="true">전체</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-53"
												id="link-tab-8868" href="#tab-8868" role="tab"
												aria-controls="tab-8868" aria-selected="false">배달/장보기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-54"
												id="link-tab-2ccd" href="#tab-2ccd" role="tab"
												aria-controls="tab-2ccd" aria-selected="false">청소/집안일</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-55"
												id="link-tab-12d0" href="#tab-12d0" role="tab"
												aria-controls="tab-12d0" aria-selected="false">설치/조립/운반</a>
											</li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-56"
												id="link-tab-3347" href="#tab-3347" role="tab"
												aria-controls="tab-3347" aria-selected="false">동행/돌봄</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-57"
												id="link-tab-4020" href="#tab-4020" role="tab"
												aria-controls="tab-4020" aria-selected="false">벌레/쥐잡기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-58"
												id="link-tab-fda4" href="#tab-fda4" role="tab"
												aria-controls="tab-fda4" aria-selected="false">역할/대행</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-59"
												id="link-tab-a893" href="#tab-a893" role="tab"
												aria-controls="tab-a893" aria-selected="false">운전/카풀</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-button-style u-custom-font u-tab-link u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-tab-link-60"
												id="link-tab-e73d" href="#tab-e73d" role="tab"
												aria-controls="tab-e73d" aria-selected="false">과외/알바</a></li>
										</ul>
										<div class="u-tab-content">
											<div class="u-container-style u-tab-active u-tab-pane"
												id="tab-3d4a" role="tabpanel"
												aria-labelledby="link-tab-3d4a">
												<div class="u-container-layout u-container-layout-58"
												style="padding: 50px; padding-top: 0px; width: 1300px">
													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.location_ctgr eq '북구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-8868"
												role="tabpanel" aria-labelledby="link-tab-8868">
												<div class="u-container-layout u-container-layout-59"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '배달/장보기'&& errand.location_ctgr eq '북구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-2ccd"
												role="tabpanel" aria-labelledby="link-tab-2ccd">
												<div class="u-container-layout u-container-layout-60"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '청소/집안일'&& errand.location_ctgr eq '북구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-12d0"
												role="tabpanel" aria-labelledby="link-tab-12d0">
												<div class="u-container-layout u-container-layout-61"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '설치/조립/운반'&& errand.location_ctgr eq '북구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-3347"
												role="tabpanel" aria-labelledby="link-tab-3347">
												<div class="u-container-layout u-container-layout-62"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '동행/돌봄'&& errand.location_ctgr eq '북구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-4020"
												role="tabpanel" aria-labelledby="link-tab-4020">
												<div class="u-container-layout u-container-layout-63"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '벌레/쥐잡기'&& errand.location_ctgr eq '북구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-fda4"
												role="tabpanel" aria-labelledby="link-tab-fda4">
												<div class="u-container-layout u-container-layout-64"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '역할대행'&& errand.location_ctgr eq '북구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-a893"
												role="tabpanel" aria-labelledby="link-tab-a893">
												<div class="u-container-layout u-container-layout-65"
												style="padding: 50px; padding-top: 0px; width: 1300px">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '운전/카풀'&& errand.location_ctgr eq '북구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-e73d"
												role="tabpanel" aria-labelledby="link-tab-e73d">
												<div class="u-container-layout u-container-layout-66">

													<table class="wrap-table">

														<tr>
															<td>
															
															<div class="innerWrap-table">
																	<div style="width: 1030px">

																		<c:forEach var="errand" items="${errandList}"
																			varStatus="status">
																			<c:if test="${errand.errand_ctgr eq '과외/알바'&& errand.location_ctgr eq '북구'}">
																				<table id="wrap__table2" class="wrap-table2"
																					border="solid">
																					<tr>
																						<th colspan="3"><a
																							href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">
																								<h1 id="wrap__h1" class="wrap_h1">${errand.title}</h1>
																						</a></th>
																						<th class="th" colspan="2"><c:choose>
																								<c:when
																									test='${fn:contains(errand.status, "0")}'>
																									<span>매칭대기중</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "1")}'>
																									<span>매칭완료</span>
																								</c:when>
																								<c:when 
																									test='${fn:contains(errand.status, "2")}'>
																									<span>매칭종료</span>
																								</c:when>
																								<c:when
																									test='${fn:contains(errand.status, "3")}'>
																									<span>종료</span>
																								</c:when>
																							</c:choose></th>
																					</tr>
																					<tr>
																					<td id="number" style="text-align: center">No.${errand.errand_id}</td>
																					<td id="location" style="text-align: center">${errand.location_ctgr}</td>
																					<td id="work_type" style="text-align: center">${errand.errand_ctgr}</td>
																					<td id="price" style="text-align: center">${errand.price}원</td>
																				</tr>
																				<tr>
																					<td id="nickname" style="text-align: center">닉네임: ${nicknameList[status.index]}</td>
																					<td id="location2" style="text-align: center">${errand.req_location}</td>
																					<td id="date" colspan="2" style="text-align: center">${errand.req_date}~${errand.want_date}</td>
																				</tr>
																				</table>
																			</c:if>
																		</c:forEach>

																	</div>
																</div>
															</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer"
		id="sec-755f">
		<div class="u-clearfix u-sheet u-sheet-1">
			<p class="u-small-text u-text u-text-variant u-text-1">
				&nbsp;<a href="https://pleasehelp.co.kr/O010101.html"
					class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-1">개인정보처리방침</a>
				<br>&nbsp;<a href="https://pleasehelp.co.kr/O010102.html"
					class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-2">서비스
					이용약관</a> <br>&nbsp;<a href="https://pleasehelp.co.kr/O010103.html"
					class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-3">위치기반서비스
					이용약관</a> <br>&nbsp;<a href="https://pleasehelp.co.kr/O010104.html"
					class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-4">업무위수탁약관</a>
				<br>&nbsp;<a href="https://pleasehelp.co.kr/O010105.html"
					class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-5">주식분할
					공고문</a> <br> <br>(주)ICㅣ대표 윤수민ㅣ대표 번호: 010-9918-0000<br>대표
				메일: vroong@naver.com<br>사업자등록번호:123-456-789<br>통신판매번호:
				2023-4777<br>서울특별시 강남구 강남대로 364<br>Copyright ⓒ 2023 부릉부름.
				All rights reserved.
			</p>
		</div>
	</footer>
</body>
</html>