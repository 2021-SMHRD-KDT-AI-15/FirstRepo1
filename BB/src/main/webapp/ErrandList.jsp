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
<link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="ErrandList.css" media="screen">
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
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="./" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">
	<header class="u-clearfix u-header u-sticky" id="sec-9269"
		data-animation-name="" data-animation-duration="0"
		data-animation-delay="0" data-animation-direction="">
		<div class="u-clearfix u-sheet u-sheet-1">
			<a href="ErrandList.jsp"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-1"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">심부름 목록</a> <a
				href="RequireErrand.jsp"
				class="u-border-none u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-2"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">심부름 요청</a> <a
				href="MyInfo.jsp"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-3"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">마이 페이지</a> <a
				href="Ranking.jsp"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-4"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">&nbsp;랭킹&nbsp;</a>
			<a href="ChatList.jsp"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-5"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">채팅</a> <a
				href="Charge.jsp"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-6"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">충전</a> <img
				class="u-image u-image-contain u-image-default u-image-1"
				src="images/222.png" alt="" data-image-width="464"
				data-image-height="390" data-href="Main.html">
		</div>
	</header>
	<section class="u-align-center u-clearfix u-section-1" id="sec-d22e">
		<div class="u-clearfix u-sheet u-sheet-1">
			<div class="u-expanded-width u-tabs u-tabs-1" data-animation-name=""
				data-animation-duration="0" data-animation-delay="0"
				data-animation-direction="">
				<ul class="u-tab-list u-unstyled" role="tablist">
					<li class="u-tab-item" role="presentation"><a
						class="active u-button-style u-tab-link" id="link-tab-3119"
						href="#tab-3119" role="tab" aria-controls="tab-3119"
						aria-selected="true">전체</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-button-style u-tab-link" id="link-tab-f3eb"
						href="#tab-f3eb" role="tab" aria-controls="tab-f3eb"
						aria-selected="false">배달/장보기</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-button-style u-tab-link" id="link-tab-e424"
						href="#tab-e424" role="tab" aria-controls="tab-e424"
						aria-selected="false">청소/집안일</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-button-style u-tab-link" id="link-tab-4b37"
						href="#tab-4b37" role="tab" aria-controls="tab-4b37"
						aria-selected="false">설치/조립/운반</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-button-style u-tab-link" id="link-tab-b2b4"
						href="#tab-b2b4" role="tab" aria-controls="tab-b2b4"
						aria-selected="false">동행/돌봄</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-button-style u-tab-link" id="link-tab-8e64"
						href="#tab-8e64" role="tab" aria-controls="tab-8e64"
						aria-selected="false">벌레/쥐잡기</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-button-style u-tab-link" id="link-tab-54f2"
						href="#tab-54f2" role="tab" aria-controls="tab-54f2"
						aria-selected="false">역할/대행</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-button-style u-tab-link" id="link-tab-bee1"
						href="#tab-bee1" role="tab" aria-controls="tab-bee1"
						aria-selected="false">운전/카풀</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-button-style u-tab-link" id="link-tab-ea41"
						href="#tab-ea41" role="tab" aria-controls="tab-ea41"
						aria-selected="false">과외/알바</a></li>
				</ul>
				<div class="u-tab-content">
					<div class="u-container-style u-tab-pane" id="tab-3119"
						role="tabpanel" aria-labelledby="link-tab-3119">
						<div class="u-container-layout u-container-layout-1"></div>
					</div>
					<div class="u-container-style u-tab-pane" id="tab-f3eb"
						role="tabpanel" aria-labelledby="link-tab-f3eb">
						<div class="u-container-layout u-container-layout-2"></div>
					</div>
					<div class="u-container-style u-tab-pane" id="tab-e424"
						role="tabpanel" aria-labelledby="link-tab-e424">
						<div class="u-container-layout u-container-layout-3"></div>
					</div>
					<div class="u-container-style u-tab-pane" id="tab-4b37"
						role="tabpanel" aria-labelledby="link-tab-4b37">
						<div class="u-container-layout u-container-layout-4"></div>
					</div>
					<div class="u-container-style u-tab-pane" id="tab-b2b4"
						role="tabpanel" aria-labelledby="link-tab-b2b4">
						<div class="u-container-layout u-container-layout-5"></div>
					</div>
					<div class="u-container-style u-tab-pane" id="tab-8e64"
						role="tabpanel" aria-labelledby="link-tab-8e64">
						<div class="u-container-layout u-container-layout-6"></div>
					</div>
					<div class="u-container-style u-tab-pane" id="tab-54f2"
						role="tabpanel" aria-labelledby="link-tab-54f2">
						<div class="u-container-layout u-container-layout-7"></div>
					</div>
					<div class="u-container-style u-tab-pane" id="tab-bee1"
						role="tabpanel" aria-labelledby="link-tab-bee1">
						<div class="u-container-layout u-container-layout-8"></div>
					</div>
					<div class="u-container-style u-tab-pane" id="tab-ea41"
						role="tabpanel" aria-labelledby="link-tab-ea41">
						<div class="u-container-layout u-container-layout-9"></div>
					</div>
				</div>
			</div>
			<div class="u-expanded-width u-tab-links-align-left u-tabs u-tabs-2">
				<ul
					class="u-border-2 u-border-palette-1-base u-spacing-10 u-tab-list u-unstyled"
					role="tablist">
					<li class="u-tab-item" role="presentation"><a
						class="active u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-hover-white u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-10"
						id="link-tab-14b7" href="#tab-14b7" role="tab"
						aria-controls="tab-14b7" aria-selected="true">전체</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-hover-white u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-11"
						id="link-tab-1182" href="#tab-1182" role="tab"
						aria-controls="tab-1182" aria-selected="false">광산구</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-hover-white u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-12"
						id="link-tab-da2b" href="#tab-da2b" role="tab"
						aria-controls="tab-da2b" aria-selected="false">동구</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-hover-white u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-13"
						id="link-tab-418f" href="#tab-418f" role="tab"
						aria-controls="tab-418f" aria-selected="false">서구</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-hover-white u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-14"
						id="link-tab-4794" href="#tab-4794" role="tab"
						aria-controls="tab-4794" aria-selected="false">남구</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-hover-white u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-15"
						id="link-tab-1e2f" href="#tab-1e2f" role="tab"
						aria-controls="tab-1e2f" aria-selected="false">북구</a></li>
				</ul>
				<div class="u-tab-content">
					<div
						class="u-container-style u-tab-active u-tab-pane u-white u-tab-pane-10"
						id="tab-14b7" role="tabpanel" aria-labelledby="link-tab-14b7">
						<div class="u-container-layout u-container-layout-10">
							<div
								class="u-container-style u-expanded-width u-group u-white u-group-1">
								<div class="u-container-layout u-container-layout-11">
									<div class="u-expanded-width u-tabs u-tabs-3">
										<ul class="u-tab-list u-unstyled" role="tablist">
											<li class="u-tab-item" role="presentation"><a
												class="active u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-16"
												id="link-tab-3d4a" href="#tab-3d4a" role="tab"
												aria-controls="tab-3d4a" aria-selected="true">전체</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-17"
												id="link-tab-8868" href="#tab-8868" role="tab"
												aria-controls="tab-8868" aria-selected="false">배달/장보기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-18"
												id="link-tab-2ccd" href="#tab-2ccd" role="tab"
												aria-controls="tab-2ccd" aria-selected="false">청소/집안일</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-19"
												id="link-tab-12d0" href="#tab-12d0" role="tab"
												aria-controls="tab-12d0" aria-selected="false">설치/조립/운반</a>
											</li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-20"
												id="link-tab-3347" href="#tab-3347" role="tab"
												aria-controls="tab-3347" aria-selected="false">동행/돌봄</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-21"
												id="link-tab-4020" href="#tab-4020" role="tab"
												aria-controls="tab-4020" aria-selected="false">벌레/쥐잡기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-22"
												id="link-tab-fda4" href="#tab-fda4" role="tab"
												aria-controls="tab-fda4" aria-selected="false">역할/대행</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-23"
												id="link-tab-a893" href="#tab-a893" role="tab"
												aria-controls="tab-a893" aria-selected="false">운전/카풀</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-24"
												id="link-tab-e73d" href="#tab-e73d" role="tab"
												aria-controls="tab-e73d" aria-selected="false">과외/알바</a></li>
										</ul>
										<div class="u-tab-content">
											<div class="u-container-style u-tab-active u-tab-pane"
												id="tab-3d4a" role="tabpanel"
												aria-labelledby="link-tab-3d4a">
												<div class="u-container-layout u-container-layout-12">
													<table border="1">
														<tr>
															<td>
																<div>
																	<c:forEach var="errand" items="${errandList}"
																		varStatus="status">
																		<!-- 속성으로 errandList랑 nicknameList 가져오기 -->
																		<a
																			href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">

																			No. ${errand.errand_id}<br> <br>
																			${errand.location_ctgr} ${errand.errand_ctgr}<br>
																			<h1>${errand.title}</h1> 닉네임 :
																			${nicknameList[status.index]}<br>
																			${errand.req_location}<br> ${errand.req_date}<br>
																			~ ${errand.want_date}<br> <br>
																			${errand.price} 원<br> <c:choose>
																				<c:when test='${fn:contains(errand.status, "0")}'>
																					<span>매칭대기중</span>
																				</c:when>
																				<c:when test='${fn:contains(errand.status, "1")}'>
																					<span>매칭완료</span>
																				</c:when>
																				<c:when test='${fn:contains(errand.status, "3")}'>
																					<span>종료</span>
																				</c:when>
																			</c:choose>
																	</c:forEach>
																</div> </a>


															</td>
														</tr>


													</table>

												</div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-8868"
												role="tabpanel" aria-labelledby="link-tab-8868">
												<div class="u-container-layout u-container-layout-13"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-2ccd"
												role="tabpanel" aria-labelledby="link-tab-2ccd">
												<div class="u-container-layout u-container-layout-14"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-12d0"
												role="tabpanel" aria-labelledby="link-tab-12d0">
												<div class="u-container-layout u-container-layout-15"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-3347"
												role="tabpanel" aria-labelledby="link-tab-3347">
												<div class="u-container-layout u-container-layout-16"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-4020"
												role="tabpanel" aria-labelledby="link-tab-4020">
												<div class="u-container-layout u-container-layout-17"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-fda4"
												role="tabpanel" aria-labelledby="link-tab-fda4">
												<div class="u-container-layout u-container-layout-18"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-a893"
												role="tabpanel" aria-labelledby="link-tab-a893">
												<div class="u-container-layout u-container-layout-19"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-e73d"
												role="tabpanel" aria-labelledby="link-tab-e73d">
												<div class="u-container-layout u-container-layout-20"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="u-container-style u-tab-pane u-white u-tab-pane-20"
						id="tab-1182" role="tabpanel" aria-labelledby="link-tab-1182">
						<div class="u-container-layout u-container-layout-21">
							<div
								class="u-container-style u-expanded-width u-group u-white u-group-2">
								<div class="u-container-layout u-container-layout-22">
									<div class="u-expanded-width u-tabs u-tabs-4">
										<ul class="u-tab-list u-unstyled" role="tablist">
											<li class="u-tab-item" role="presentation"><a
												class="active u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-25"
												id="link-tab-55e5" href="#tab-55e5" role="tab"
												aria-controls="tab-55e5" aria-selected="true">전체</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-26"
												id="link-tab-acec" href="#tab-acec" role="tab"
												aria-controls="tab-acec" aria-selected="false">배달/장보기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-27"
												id="link-tab-4ec1" href="#tab-4ec1" role="tab"
												aria-controls="tab-4ec1" aria-selected="false">청소/집안일</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-28"
												id="link-tab-584d" href="#tab-584d" role="tab"
												aria-controls="tab-584d" aria-selected="false">설치/조립/운반</a>
											</li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-29"
												id="link-tab-c827" href="#tab-c827" role="tab"
												aria-controls="tab-c827" aria-selected="false">동행/돌봄</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-30"
												id="link-tab-fc77" href="#tab-fc77" role="tab"
												aria-controls="tab-fc77" aria-selected="false">벌레/쥐잡기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-31"
												id="link-tab-afcb" href="#tab-afcb" role="tab"
												aria-controls="tab-afcb" aria-selected="false">역할/대행</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-32"
												id="link-tab-d896" href="#tab-d896" role="tab"
												aria-controls="tab-d896" aria-selected="false">운전/카풀</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-33"
												id="link-tab-db1b" href="#tab-db1b" role="tab"
												aria-controls="tab-db1b" aria-selected="false">과외/알바</a></li>
										</ul>
										<div class="u-tab-content">
											<div class="u-container-style u-tab-active u-tab-pane"
												id="tab-55e5" role="tabpanel"
												aria-labelledby="link-tab-55e5">
												<div class="u-container-layout u-container-layout-23"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-acec"
												role="tabpanel" aria-labelledby="link-tab-acec">
												<div class="u-container-layout u-container-layout-24"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-4ec1"
												role="tabpanel" aria-labelledby="link-tab-4ec1">
												<div class="u-container-layout u-container-layout-25"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-584d"
												role="tabpanel" aria-labelledby="link-tab-584d">
												<div class="u-container-layout u-container-layout-26"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-c827"
												role="tabpanel" aria-labelledby="link-tab-c827">
												<div class="u-container-layout u-container-layout-27"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-fc77"
												role="tabpanel" aria-labelledby="link-tab-fc77">
												<div class="u-container-layout u-container-layout-28"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-afcb"
												role="tabpanel" aria-labelledby="link-tab-afcb">
												<div class="u-container-layout u-container-layout-29"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-d896"
												role="tabpanel" aria-labelledby="link-tab-d896">
												<div class="u-container-layout u-container-layout-30"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-db1b"
												role="tabpanel" aria-labelledby="link-tab-db1b">
												<div class="u-container-layout u-container-layout-31"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="u-container-style u-tab-pane u-white u-tab-pane-30"
						id="tab-da2b" role="tabpanel" aria-labelledby="link-tab-da2b">
						<div class="u-container-layout u-container-layout-32">
							<div
								class="u-container-style u-expanded-width u-group u-white u-group-3">
								<div class="u-container-layout u-container-layout-33">
									<div class="u-expanded-width u-tabs u-tabs-5">
										<ul class="u-tab-list u-unstyled" role="tablist">
											<li class="u-tab-item" role="presentation"><a
												class="active u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-34"
												id="link-tab-542b" href="#tab-542b" role="tab"
												aria-controls="tab-542b" aria-selected="true">전체</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-35"
												id="link-tab-7483" href="#tab-7483" role="tab"
												aria-controls="tab-7483" aria-selected="false">배달/장보기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-36"
												id="link-tab-c00c" href="#tab-c00c" role="tab"
												aria-controls="tab-c00c" aria-selected="false">청소/집안일</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-37"
												id="link-tab-5997" href="#tab-5997" role="tab"
												aria-controls="tab-5997" aria-selected="false">설치/조립/운반</a>
											</li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-38"
												id="link-tab-28b8" href="#tab-28b8" role="tab"
												aria-controls="tab-28b8" aria-selected="false">동행/돌봄</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-39"
												id="link-tab-19bc" href="#tab-19bc" role="tab"
												aria-controls="tab-19bc" aria-selected="false">벌레/쥐잡기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-40"
												id="link-tab-5f13" href="#tab-5f13" role="tab"
												aria-controls="tab-5f13" aria-selected="false">역할/대행</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-41"
												id="link-tab-6348" href="#tab-6348" role="tab"
												aria-controls="tab-6348" aria-selected="false">운전/카풀</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-42"
												id="link-tab-a2b8" href="#tab-a2b8" role="tab"
												aria-controls="tab-a2b8" aria-selected="false">과외/알바</a></li>
										</ul>
										<div class="u-tab-content">
											<div class="u-container-style u-tab-pane" id="tab-542b"
												role="tabpanel" aria-labelledby="link-tab-542b">
												<div class="u-container-layout u-container-layout-34"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-7483"
												role="tabpanel" aria-labelledby="link-tab-7483">
												<div class="u-container-layout u-container-layout-35"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-c00c"
												role="tabpanel" aria-labelledby="link-tab-c00c">
												<div class="u-container-layout u-container-layout-36"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-5997"
												role="tabpanel" aria-labelledby="link-tab-5997">
												<div class="u-container-layout u-container-layout-37"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-28b8"
												role="tabpanel" aria-labelledby="link-tab-28b8">
												<div class="u-container-layout u-container-layout-38"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-19bc"
												role="tabpanel" aria-labelledby="link-tab-19bc">
												<div class="u-container-layout u-container-layout-39"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-5f13"
												role="tabpanel" aria-labelledby="link-tab-5f13">
												<div class="u-container-layout u-container-layout-40"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-6348"
												role="tabpanel" aria-labelledby="link-tab-6348">
												<div class="u-container-layout u-container-layout-41"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-a2b8"
												role="tabpanel" aria-labelledby="link-tab-a2b8">
												<div class="u-container-layout u-container-layout-42"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="u-container-style u-tab-pane u-white u-tab-pane-40"
						id="tab-418f" role="tabpanel" aria-labelledby="link-tab-418f">
						<div class="u-container-layout u-container-layout-43">
							<div
								class="u-container-style u-expanded-width u-group u-white u-group-4">
								<div class="u-container-layout u-container-layout-44">
									<div class="u-expanded-width u-tabs u-tabs-6">
										<ul class="u-tab-list u-unstyled" role="tablist">
											<li class="u-tab-item" role="presentation"><a
												class="active u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-43"
												id="link-tab-1f5e" href="#tab-1f5e" role="tab"
												aria-controls="tab-1f5e" aria-selected="true">전체</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-44"
												id="link-tab-dbcf" href="#tab-dbcf" role="tab"
												aria-controls="tab-dbcf" aria-selected="false">배달/장보기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-45"
												id="link-tab-d6a5" href="#tab-d6a5" role="tab"
												aria-controls="tab-d6a5" aria-selected="false">청소/집안일</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-46"
												id="link-tab-c74a" href="#tab-c74a" role="tab"
												aria-controls="tab-c74a" aria-selected="false">설치/조립/운반</a>
											</li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-47"
												id="link-tab-1752" href="#tab-1752" role="tab"
												aria-controls="tab-1752" aria-selected="false">동행/돌봄</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-48"
												id="link-tab-80e8" href="#tab-80e8" role="tab"
												aria-controls="tab-80e8" aria-selected="false">벌레/쥐잡기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-49"
												id="link-tab-5e37" href="#tab-5e37" role="tab"
												aria-controls="tab-5e37" aria-selected="false">역할/대행</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-50"
												id="link-tab-699b" href="#tab-699b" role="tab"
												aria-controls="tab-699b" aria-selected="false">운전/카풀</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-51"
												id="link-tab-73ff" href="#tab-73ff" role="tab"
												aria-controls="tab-73ff" aria-selected="false">과외/알바</a></li>
										</ul>
										<div class="u-tab-content">
											<div class="u-container-style u-tab-pane" id="tab-1f5e"
												role="tabpanel" aria-labelledby="link-tab-1f5e">
												<div class="u-container-layout u-container-layout-45"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-dbcf"
												role="tabpanel" aria-labelledby="link-tab-dbcf">
												<div class="u-container-layout u-container-layout-46"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-d6a5"
												role="tabpanel" aria-labelledby="link-tab-d6a5">
												<div class="u-container-layout u-container-layout-47"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-c74a"
												role="tabpanel" aria-labelledby="link-tab-c74a">
												<div class="u-container-layout u-container-layout-48"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-1752"
												role="tabpanel" aria-labelledby="link-tab-1752">
												<div class="u-container-layout u-container-layout-49"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-80e8"
												role="tabpanel" aria-labelledby="link-tab-80e8">
												<div class="u-container-layout u-container-layout-50"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-5e37"
												role="tabpanel" aria-labelledby="link-tab-5e37">
												<div class="u-container-layout u-container-layout-51"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-699b"
												role="tabpanel" aria-labelledby="link-tab-699b">
												<div class="u-container-layout u-container-layout-52"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-73ff"
												role="tabpanel" aria-labelledby="link-tab-73ff">
												<div class="u-container-layout u-container-layout-53"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="u-container-style u-tab-pane u-white u-tab-pane-50"
						id="tab-4794" role="tabpanel" aria-labelledby="link-tab-4794">
						<div class="u-container-layout u-container-layout-54">
							<div
								class="u-container-style u-expanded-width u-group u-white u-group-5">
								<div class="u-container-layout u-container-layout-55">
									<div class="u-expanded-width u-tabs u-tabs-7">
										<ul class="u-tab-list u-unstyled" role="tablist">
											<li class="u-tab-item" role="presentation"><a
												class="active u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-52"
												id="link-tab-8b29" href="#tab-8b29" role="tab"
												aria-controls="tab-8b29" aria-selected="true">전체</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-53"
												id="link-tab-a5be" href="#tab-a5be" role="tab"
												aria-controls="tab-a5be" aria-selected="false">배달/장보기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-54"
												id="link-tab-038d" href="#tab-038d" role="tab"
												aria-controls="tab-038d" aria-selected="false">청소/집안일</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-55"
												id="link-tab-09bf" href="#tab-09bf" role="tab"
												aria-controls="tab-09bf" aria-selected="false">설치/조립/운반</a>
											</li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-56"
												id="link-tab-0e18" href="#tab-0e18" role="tab"
												aria-controls="tab-0e18" aria-selected="false">동행/돌봄</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-57"
												id="link-tab-b7f9" href="#tab-b7f9" role="tab"
												aria-controls="tab-b7f9" aria-selected="false">벌레/쥐잡기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-58"
												id="link-tab-b00b" href="#tab-b00b" role="tab"
												aria-controls="tab-b00b" aria-selected="false">역할/대행</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-59"
												id="link-tab-601e" href="#tab-601e" role="tab"
												aria-controls="tab-601e" aria-selected="false">운전/카풀</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-60"
												id="link-tab-c7e0" href="#tab-c7e0" role="tab"
												aria-controls="tab-c7e0" aria-selected="false">과외/알바</a></li>
										</ul>
										<div class="u-tab-content">
											<div class="u-container-style u-tab-pane" id="tab-8b29"
												role="tabpanel" aria-labelledby="link-tab-8b29">
												<div class="u-container-layout u-container-layout-56"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-a5be"
												role="tabpanel" aria-labelledby="link-tab-a5be">
												<div class="u-container-layout u-container-layout-57"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-038d"
												role="tabpanel" aria-labelledby="link-tab-038d">
												<div class="u-container-layout u-container-layout-58"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-09bf"
												role="tabpanel" aria-labelledby="link-tab-09bf">
												<div class="u-container-layout u-container-layout-59"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-0e18"
												role="tabpanel" aria-labelledby="link-tab-0e18">
												<div class="u-container-layout u-container-layout-60"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-b7f9"
												role="tabpanel" aria-labelledby="link-tab-b7f9">
												<div class="u-container-layout u-container-layout-61"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-b00b"
												role="tabpanel" aria-labelledby="link-tab-b00b">
												<div class="u-container-layout u-container-layout-62"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-601e"
												role="tabpanel" aria-labelledby="link-tab-601e">
												<div class="u-container-layout u-container-layout-63"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-c7e0"
												role="tabpanel" aria-labelledby="link-tab-c7e0">
												<div class="u-container-layout u-container-layout-64"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="u-container-style u-tab-pane u-white u-tab-pane-60"
						id="tab-1e2f" role="tabpanel" aria-labelledby="link-tab-1e2f">
						<div class="u-container-layout u-container-layout-65">
							<div
								class="u-container-style u-expanded-width u-group u-white u-group-6">
								<div class="u-container-layout u-container-layout-66">
									<div class="u-expanded-width u-tabs u-tabs-8">
										<ul class="u-tab-list u-unstyled" role="tablist">
											<li class="u-tab-item" role="presentation"><a
												class="active u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-61"
												id="link-tab-b4f0" href="#tab-b4f0" role="tab"
												aria-controls="tab-b4f0" aria-selected="true">전체</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-62"
												id="link-tab-cb4e" href="#tab-cb4e" role="tab"
												aria-controls="tab-cb4e" aria-selected="false">배달/장보기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-63"
												id="link-tab-c208" href="#tab-c208" role="tab"
												aria-controls="tab-c208" aria-selected="false">청소/집안일</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-64"
												id="link-tab-1a08" href="#tab-1a08" role="tab"
												aria-controls="tab-1a08" aria-selected="false">설치/조립/운반</a>
											</li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-65"
												id="link-tab-e872" href="#tab-e872" role="tab"
												aria-controls="tab-e872" aria-selected="false">동행/돌봄</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-66"
												id="link-tab-ee1d" href="#tab-ee1d" role="tab"
												aria-controls="tab-ee1d" aria-selected="false">벌레/쥐잡기</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-67"
												id="link-tab-0a5e" href="#tab-0a5e" role="tab"
												aria-controls="tab-0a5e" aria-selected="false">역할/대행</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-68"
												id="link-tab-0284" href="#tab-0284" role="tab"
												aria-controls="tab-0284" aria-selected="false">운전/카풀</a></li>
											<li class="u-tab-item" role="presentation"><a
												class="u-active-custom-color-1 u-btn-round u-button-style u-custom-font u-radius u-tab-link u-text-active-white u-text-custom-color-1 u-white u-tab-link-69"
												id="link-tab-0d1b" href="#tab-0d1b" role="tab"
												aria-controls="tab-0d1b" aria-selected="false">과외/알바</a></li>
										</ul>
										<div class="u-tab-content">
											<div class="u-container-style u-tab-pane" id="tab-b4f0"
												role="tabpanel" aria-labelledby="link-tab-b4f0">
												<div class="u-container-layout u-container-layout-67"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-cb4e"
												role="tabpanel" aria-labelledby="link-tab-cb4e">
												<div class="u-container-layout u-container-layout-68"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-c208"
												role="tabpanel" aria-labelledby="link-tab-c208">
												<div class="u-container-layout u-container-layout-69"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-1a08"
												role="tabpanel" aria-labelledby="link-tab-1a08">
												<div class="u-container-layout u-container-layout-70"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-e872"
												role="tabpanel" aria-labelledby="link-tab-e872">
												<div class="u-container-layout u-container-layout-71"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-ee1d"
												role="tabpanel" aria-labelledby="link-tab-ee1d">
												<div class="u-container-layout u-container-layout-72"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-0a5e"
												role="tabpanel" aria-labelledby="link-tab-0a5e">
												<div class="u-container-layout u-container-layout-73"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-0284"
												role="tabpanel" aria-labelledby="link-tab-0284">
												<div class="u-container-layout u-container-layout-74"></div>
											</div>
											<div class="u-container-style u-tab-pane" id="tab-0d1b"
												role="tabpanel" aria-labelledby="link-tab-0d1b">
												<div class="u-container-layout u-container-layout-75"></div>
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
	<section class="u-backlink u-clearfix u-grey-80">
		<a class="u-link" href="https://nicepage.com/website-templates"
			target="_blank"> <span>Website Templates</span>
		</a>
		<p class="u-text">
			<span>created with</span>
		</p>
		<a class="u-link" href="https://nicepage.com/website-builder"
			target="_blank"> <span>Free Website Builder</span>
		</a>.
	</section>

</body>
</html>