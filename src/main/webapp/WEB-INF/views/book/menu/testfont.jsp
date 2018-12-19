<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>테스트 입니다.아마도</title>
</head>
<body>
	<div class="se2_tool" id="se2_tool">

		<div class="se2_text_tool husky_seditor_text_tool">
			<ul class="se2_font_type">
				<li class="husky_seditor_ui_fontName"><button type="button"
						class="se2_font_family" onclick="ccr(this, 'SE2.font', event)"
						title="글꼴">
						<span class="husky_se2m_current_fontName">굴림</span>
					</button>

					<div class="se2_layer husky_se_fontName_layer"
						style="overflow: hidden auto; height: 400px; width: 204px;">
						<div class="se2_in_layer">
							<ul class="se2_l_font_fam" style="">
								<li class="active"><button type="button">
										<span>굴림<span>(</span><em
											style="font-family: gulim, sans-serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>굴림체<span>(</span><em
											style="font-family: gulimche, sans-serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>돋움<span>(</span><em
											style="font-family: dotum, sans-serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>돋움체<span>(</span><em
											style="font-family: dotumche, sans-serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>바탕<span>(</span><em
											style="font-family: batang, serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>바탕체<span>(</span><em
											style="font-family: batangche, serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>궁서<span>(</span><em
											style="font-family: gungsuh, serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>궁서체<span>(</span><em
											style="font-family: gungsuhche, serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>Arial<span>(</span><em
											style="font-family: arial, sans-serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>Courier New<span>(</span><em
											style="font-family: courier new, serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>Tahoma<span>(</span><em
											style="font-family: tahoma, sans-serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>Times New Roman<span>(</span><em
											style="font-family: times new roman, serif, sans-serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>Verdana<span>(</span><em
											style="font-family: verdana, sans-serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>Sans Serif<span>(</span><em
											style="font-family: sans serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>MS Gothic<span>(</span><em
											style="font-family: ms gothic, sans-serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>MS PGothic<span>(</span><em
											style="font-family: ms pgothic, sans-serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>MS UI Gothic<span>(</span><em
											style="font-family: ms ui gothic, sans-serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>Meiryo<span>(</span><em
											style="font-family: meiryo, sans-serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li><button type="button">
										<span>SimSun<span>(</span><em
											style="font-family: simsun, serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li style="display: none"><button type="button">
										<span>@DisplayName@<span>(</span><em
											style="font-family: FontFamily;">@SampleText@</em><span>)</span></span>
									</button></li>
								<li class="se2_division husky_seditor_font_separator"
									style="display: block;"></li>

								<li data-font="NanumGothic,나눔고딕"
									class="husky_seditor_font_nanumgothic" style="display: block;"><button
										type="button">
										<span>나눔고딕<span>(</span><em
											style="font-family: NanumGothic, 나눔고딕, sans-serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li data-font="NanumMyeongjo,나눔명조"
									class="husky_seditor_font_nanummyeongjo" style="display: none;"><button
										type="button">
										<span>나눔명조<span>(</span><em
											style="font-family: NanumMyeongjo, 나눔명조, serif;">가나다라</em><span>)</span></span>
									</button></li>
								<li data-font="NanumSquare,나눔스퀘어"
									class="husky_seditor_font_nanumsquare" style="display: none;"><button
										type="button">
										<span>나눔스퀘어<span>(</span><em
											style="font-family: NanumSquare, 나눔스퀘어, serif;">가나다라</em><span>)</span></span>
									</button></li>
							</ul>
						</div>
					</div></li>

				<li class="husky_seditor_ui_fontSize"><button type="button"
						class="se2_font_size" title="글자크기"
						onclick="ccr(this, 'SE2.size', event)">
						<span class="husky_se2m_current_fontSize">10pt</span>
					</button>

					<div class="se2_layer husky_se_fontSize_layer">
						<div class="se2_in_layer">
							<ul class="se2_l_font_size">
								<li><button type="button">
										<span
											style="margin-top: 4px; margin-bottom: 3px; margin-left: 5px; font-size: 7pt;">가나다라마바사<span
											style="font-size: 7pt;">(7pt)</span></span>
									</button></li>
								<li><button type="button">
										<span style="margin-bottom: 2px; font-size: 8pt;">가나다라마바사<span
											style="font-size: 8pt;">(8pt)</span></span>
									</button></li>
								<li class=""><button type="button">
										<span style="margin-bottom: 1px; font-size: 9pt;">가나다라마바사<span
											style="font-size: 9pt;">(9pt)</span></span>
									</button></li>
								<li class="active"><button type="button">
										<span style="margin-bottom: 1px; font-size: 10pt;">가나다라마바사<span
											style="font-size: 10pt;">(10pt)</span></span>
									</button></li>
								<li><button type="button">
										<span style="margin-bottom: 2px; font-size: 11pt;">가나다라마바사<span
											style="font-size: 11pt;">(11pt)</span></span>
									</button></li>
								<li><button type="button">
										<span style="margin-bottom: 1px; font-size: 12pt;">가나다라마바사<span
											style="font-size: 12pt;">(12pt)</span></span>
									</button></li>
								<li><button type="button">
										<span style="margin-bottom: 2px; font-size: 14pt;">가나다라마바사<span
											style="margin-left: 6px; font-size: 14pt;">(14pt)</span></span>
									</button></li>
								<li><button type="button">
										<span style="margin-bottom: 1px; font-size: 18pt;">가나다라마<span
											style="margin-left: 8px; font-size: 18pt;">(18pt)</span></span>
									</button></li>
								<li><button type="button">
										<span style="margin-left: 3px; font-size: 24pt;">가나다<span
											style="margin-left: 11px; font-size: 24pt;">(24pt)</span></span>
									</button></li>
								<li><button type="button">
										<span
											style="margin-top: -1px; margin-left: 3px; font-size: 36pt;">가나다<span
											style="font-size: 36pt;">(36pt)</span></span>
									</button></li>
							</ul>
						</div>
					</div></li>
			</ul>
			<ul>
				<li class="husky_seditor_ui_bold first_child"><button
						type="button" title="굵게[Ctrl+B]" class="se2_bold"
						onclick="ccr(this, 'SE2.bold', event)">
						<span class="_buttonRound tool_bg">굵게[Ctrl+B]</span>
					</button></li>

				<li class="husky_seditor_ui_underline"><button type="button"
						title="밑줄[Ctrl+U]" class="se2_underline"
						onclick="ccr(this, 'SE2.underline', event)">
						<span class="_buttonRound">밑줄[Ctrl+U]</span>
					</button></li>

				<li class="husky_seditor_ui_italic"><button type="button"
						title="기울임꼴[Ctrl+I]" class="se2_italic"
						onclick="ccr(this, 'SE2.italic', event)">
						<span class="_buttonRound">기울임꼴[Ctrl+I]</span>
					</button></li>

				<li class="husky_seditor_ui_lineThrough"><button type="button"
						title="취소선[Ctrl+D]" class="se2_tdel"
						onclick="ccr(this, 'SE2.strikethrough', event)">
						<span class="_buttonRound">취소선[Ctrl+D]</span>
					</button></li>

				<li class="se2_pair husky_seditor_ui_fontColor last_child"><span
					class="selected_color husky_se2m_fontColor_lastUsed"
					style="background-color: rgb(0, 0, 0);"></span><span
					class="husky_seditor_ui_fontColorA"><button type="button"
							title="글자색" class="se2_fcolor"
							onclick="ccr(this, 'SE2.fontcolor', event)">
							<span>글자색</span>
						</button></span><span class="husky_seditor_ui_fontColorB"><button
							type="button" title="더보기" class="se2_fcolor_more">
							<span class="_buttonRound tool_bg">더보기</span>
						</button></span>

					<div class="se2_layer husky_se2m_fontcolor_layer"
						style="display: none">
						<div class="se2_in_layer husky_se2m_fontcolor_paletteHolder">
							<div class="se2_palette husky_se2m_color_palette">
								<ul class="se2_pick_color">
									<li><button type="button" title="#ff0000"
											style="background: #ff0000">
											<span><span>#ff0000</span></span>
										</button></li>
									<li><button type="button" title="#ff6c00"
											style="background: #ff6c00">
											<span><span>#ff6c00</span></span>
										</button></li>
									<li><button type="button" title="#ffaa00"
											style="background: #ffaa00">
											<span><span>#ffaa00</span></span>
										</button></li>
									<li><button type="button" title="#ffef00"
											style="background: #ffef00">
											<span><span>#ffef00</span></span>
										</button></li>
									<li><button type="button" title="#a6cf00"
											style="background: #a6cf00">
											<span><span>#a6cf00</span></span>
										</button></li>
									<li><button type="button" title="#009e25"
											style="background: #009e25">
											<span><span>#009e25</span></span>
										</button></li>
									<li><button type="button" title="#00b0a2"
											style="background: #00b0a2">
											<span><span>#00b0a2</span></span>
										</button></li>
									<li><button type="button" title="#0075c8"
											style="background: #0075c8">
											<span><span>#0075c8</span></span>
										</button></li>
									<li><button type="button" title="#3a32c3"
											style="background: #3a32c3">
											<span><span>#3a32c3</span></span>
										</button></li>
									<li><button type="button" title="#7820b9"
											style="background: #7820b9">
											<span><span>#7820b9</span></span>
										</button></li>
									<li><button type="button" title="#ef007c"
											style="background: #ef007c">
											<span><span>#ef007c</span></span>
										</button></li>
									<li><button type="button" title="#000000"
											style="background: #000000">
											<span><span>#000000</span></span>
										</button></li>
									<li><button type="button" title="#252525"
											style="background: #252525">
											<span><span>#252525</span></span>
										</button></li>
									<li><button type="button" title="#464646"
											style="background: #464646">
											<span><span>#464646</span></span>
										</button></li>
									<li><button type="button" title="#636363"
											style="background: #636363">
											<span><span>#636363</span></span>
										</button></li>
									<li><button type="button" title="#7d7d7d"
											style="background: #7d7d7d">
											<span><span>#7d7d7d</span></span>
										</button></li>
									<li><button type="button" title="#9a9a9a"
											style="background: #9a9a9a">
											<span><span>#9a9a9a</span></span>
										</button></li>
									<li><button type="button" title="#ffe8e8"
											style="background: #ffe8e8">
											<span><span>#9a9a9a</span></span>
										</button></li>
									<li><button type="button" title="#f7e2d2"
											style="background: #f7e2d2">
											<span><span>#f7e2d2</span></span>
										</button></li>
									<li><button type="button" title="#f5eddc"
											style="background: #f5eddc">
											<span><span>#f5eddc</span></span>
										</button></li>
									<li><button type="button" title="#f5f4e0"
											style="background: #f5f4e0">
											<span><span>#f5f4e0</span></span>
										</button></li>
									<li><button type="button" title="#edf2c2"
											style="background: #edf2c2">
											<span><span>#edf2c2</span></span>
										</button></li>
									<li><button type="button" title="#def7e5"
											style="background: #def7e5">
											<span><span>#def7e5</span></span>
										</button></li>
									<li><button type="button" title="#d9eeec"
											style="background: #d9eeec">
											<span><span>#d9eeec</span></span>
										</button></li>
									<li><button type="button" title="#c9e0f0"
											style="background: #c9e0f0">
											<span><span>#c9e0f0</span></span>
										</button></li>
									<li><button type="button" title="#d6d4eb"
											style="background: #d6d4eb">
											<span><span>#d6d4eb</span></span>
										</button></li>
									<li><button type="button" title="#e7dbed"
											style="background: #e7dbed">
											<span><span>#e7dbed</span></span>
										</button></li>
									<li><button type="button" title="#f1e2ea"
											style="background: #f1e2ea">
											<span><span>#f1e2ea</span></span>
										</button></li>
									<li><button type="button" title="#acacac"
											style="background: #acacac">
											<span><span>#acacac</span></span>
										</button></li>
									<li><button type="button" title="#c2c2c2"
											style="background: #c2c2c2">
											<span><span>#c2c2c2</span></span>
										</button></li>
									<li><button type="button" title="#cccccc"
											style="background: #cccccc">
											<span><span>#cccccc</span></span>
										</button></li>
									<li><button type="button" title="#e1e1e1"
											style="background: #e1e1e1">
											<span><span>#e1e1e1</span></span>
										</button></li>
									<li><button type="button" title="#ebebeb"
											style="background: #ebebeb">
											<span><span>#ebebeb</span></span>
										</button></li>
									<li><button type="button" title="#ffffff"
											style="background: #ffffff">
											<span><span>#ffffff</span></span>
										</button></li>
								</ul>
								<ul class="se2_pick_color" style="width: 156px;">
									<li><button type="button" title="#e97d81"
											style="background: #e97d81">
											<span><span>#e97d81</span></span>
										</button></li>
									<li><button type="button" title="#e19b73"
											style="background: #e19b73">
											<span><span>#e19b73</span></span>
										</button></li>
									<li><button type="button" title="#d1b274"
											style="background: #d1b274">
											<span><span>#d1b274</span></span>
										</button></li>
									<li><button type="button" title="#cfcca2"
											style="background: #cfcca2">
											<span><span>#cfcca2</span></span>
										</button></li>
									<li><button type="button" title="#cfcca2"
											style="background: #cfcca2">
											<span><span>#cfcca2</span></span>
										</button></li>
									<li><button type="button" title="#61b977"
											style="background: #61b977">
											<span><span>#61b977</span></span>
										</button></li>
									<li><button type="button" title="#53aea8"
											style="background: #53aea8">
											<span><span>#53aea8</span></span>
										</button></li>
									<li><button type="button" title="#518fbb"
											style="background: #518fbb">
											<span><span>#518fbb</span></span>
										</button></li>
									<li><button type="button" title="#6a65bb"
											style="background: #6a65bb">
											<span><span>#6a65bb</span></span>
										</button></li>
									<li><button type="button" title="#9a54ce"
											style="background: #9a54ce">
											<span><span>#9a54ce</span></span>
										</button></li>
									<li><button type="button" title="#e573ae"
											style="background: #e573ae">
											<span><span>#e573ae</span></span>
										</button></li>
									<li><button type="button" title="#5a504b"
											style="background: #5a504b">
											<span><span>#5a504b</span></span>
										</button></li>
									<li><button type="button" title="#767b86"
											style="background: #767b86">
											<span><span>#767b86</span></span>
										</button></li>
									<li><button type="button" title="#951015"
											style="background: #951015">
											<span><span>#951015</span></span>
										</button></li>
									<li><button type="button" title="#6e391a"
											style="background: #6e391a">
											<span><span>#6e391a</span></span>
										</button></li>
									<li><button type="button" title="#785c25"
											style="background: #785c25">
											<span><span>#785c25</span></span>
										</button></li>
									<li><button type="button" title="#5f5b25"
											style="background: #5f5b25">
											<span><span>#5f5b25</span></span>
										</button></li>
									<li><button type="button" title="#4c511f"
											style="background: #4c511f">
											<span><span>#4c511f</span></span>
										</button></li>
									<li><button type="button" title="#1c4827"
											style="background: #1c4827">
											<span><span>#1c4827</span></span>
										</button></li>
									<li><button type="button" title="#0d514c"
											style="background: #0d514c">
											<span><span>#0d514c</span></span>
										</button></li>
									<li><button type="button" title="#1b496a"
											style="background: #1b496a">
											<span><span>#1b496a</span></span>
										</button></li>
									<li><button type="button" title="#2b285f"
											style="background: #2b285f">
											<span><span>#2b285f</span></span>
										</button></li>
									<li><button type="button" title="#45245b"
											style="background: #45245b">
											<span><span>#45245b</span></span>
										</button></li>
									<li><button type="button" title="#721947"
											style="background: #721947">
											<span><span>#721947</span></span>
										</button></li>
									<li><button type="button" title="#352e2c"
											style="background: #352e2c">
											<span><span>#352e2c</span></span>
										</button></li>
									<li><button type="button" title="#3c3f45"
											style="background: #3c3f45">
											<span><span>#3c3f45</span></span>
										</button></li>
								</ul>
								<button type="button" title="더보기"
									class="se2_view_more husky_se2m_color_palette_more_btn">
									<span>더보기</span>
								</button>
								<div class="husky_se2m_color_palette_recent"
									style="display: none">
									<h4>최근 사용한 색</h4>
									<ul class="se2_pick_color">
										<li></li>

										<!-- <li><button type="button" title="#e97d81" style="background:#e97d81"><span><span>#e97d81</span></span></button></li> -->

									</ul>
								</div>
								<div class="se2_palette2 husky_se2m_color_palette_colorpicker">
									<div class="se2_color_set">
										<span class="se2_selected_color"><span
											class="husky_se2m_cp_preview" style="background: #e97d81"></span></span><label
											for="se2m_cp_colorcode" class="blind">글자 색상 코드</label><input
											type="text" id="se2m_cp_colorcode" name=""
											class="input_ty1 husky_se2m_cp_colorcode" value="#e97d81">
										<button type="button"
											class="se2_btn_insert husky_se2m_color_palette_ok_btn"
											title="입력">
											<span>입력</span>
										</button>
									</div>
									<div class="se2_gradation1 husky_se2m_cp_colpanel"></div>
									<div class="se2_gradation2 husky_se2m_cp_huepanel"></div>
								</div>
							</div>
						</div>
					</div></li>

				<li class="se2_pair husky_seditor_ui_BGColor last_child"><span
					class="selected_color husky_se2m_BGColor_lastUsed"
					style="background-color: rgb(119, 119, 119);"></span><span
					class="husky_seditor_ui_BGColorA"><button type="button"
							title="배경색" class="se2_bgcolor"
							onclick="ccr(this, 'SE2.bgcolor', event)">
							<span>배경색</span>
						</button></span><span class="husky_seditor_ui_BGColorB"><button
							type="button" title="더보기" class="se2_bgcolor_more">
							<span class="_buttonRound tool_bg">더보기</span>
						</button></span>

					<div class="se2_layer se2_layer husky_se2m_BGColor_layer"
						style="display: none">
						<div class="se2_in_layer">
							<div class="se2_palette_bgcolor">
								<ul class="se2_background husky_se2m_bgcolor_list">
									<li><button type="button" title="#ff0000"
											style="background: #ff0000; color: #ffffff">
											<span><span>가나다</span></span>
										</button></li>
									<li><button type="button" title="#6d30cf"
											style="background: #6d30cf; color: #ffffff">
											<span><span>가나다</span></span>
										</button></li>
									<li><button type="button" title="#000000"
											style="background: #000000; color: #ffffff">
											<span><span>가나다</span></span>
										</button></li>
									<li><button type="button" title="#ff6600"
											style="background: #ff6600; color: #ffffff">
											<span><span>가나다</span></span>
										</button></li>
									<li><button type="button" title="#3333cc"
											style="background: #3333cc; color: #ffffff">
											<span><span>가나다</span></span>
										</button></li>
									<li><button type="button" title="#333333"
											style="background: #333333; color: #ffff00">
											<span><span>가나다</span></span>
										</button></li>
									<li><button type="button" title="#ffa700"
											style="background: #ffa700; color: #ffffff">
											<span><span>가나다</span></span>
										</button></li>
									<li><button type="button" title="#009999"
											style="background: #009999; color: #ffffff">
											<span><span>가나다</span></span>
										</button></li>
									<li><button type="button" title="#8e8e8e"
											style="background: #8e8e8e; color: #ffffff">
											<span><span>가나다</span></span>
										</button></li>
									<li><button type="button" title="#cc9900"
											style="background: #cc9900; color: #ffffff">
											<span><span>가나다</span></span>
										</button></li>
									<li><button type="button" title="#77b02b"
											style="background: #77b02b; color: #ffffff">
											<span><span>가나다</span></span>
										</button></li>
									<li><button type="button" title="#ffffff"
											style="background: #ffffff; color: #000000">
											<span><span>가나다</span></span>
										</button></li>
								</ul>
							</div>
							<div class="husky_se2m_BGColor_paletteHolder"></div>
						</div>
					</div></li>
			</ul>
			<ul>
				<li class="husky_seditor_ui_justifyleft first_child active"><button
						type="button" title="왼쪽정렬" class="se2_left">
						<span class="_buttonRound tool_bg">왼쪽정렬</span>
					</button></li>

				<li class="husky_seditor_ui_justifycenter"><button
						type="button" title="가운데정렬" class="se2_center">
						<span class="_buttonRound">가운데정렬</span>
					</button></li>

				<li class="husky_seditor_ui_justifyright"><button type="button"
						title="오른쪽정렬" class="se2_right">
						<span class="_buttonRound">오른쪽정렬</span>
					</button></li>

				<li class="husky_seditor_ui_justifyfull"><button type="button"
						title="양쪽정렬" class="se2_justify">
						<span class="_buttonRound">양쪽정렬</span>
					</button></li>
				<li class="husky_seditor_ui_lineHeight last_child"><button
						type="button" title="줄간격" class="se2_lineheight"
						onclick="ccr(this, 'SE2.lineheight', event)">
						<span class="_buttonRound tool_bg">줄간격</span>
					</button>


					<div class="se2_layer husky_se2m_lineHeight_layer">
						<div class="se2_in_layer">
							<ul class="se2_l_line_height">
								<li><button type="button">
										<span>50%</span>
									</button></li>
								<li><button type="button">
										<span>80%</span>
									</button></li>
								<li><button type="button">
										<span>100%</span>
									</button></li>
								<li><button type="button">
										<span>120%</span>
									</button></li>

								<li><button type="button">
										<span>150%</span>
									</button></li>
								<li><button type="button">
										<span>180%</span>
									</button></li>
								<li><button type="button">
										<span>200%</span>
									</button></li>
							</ul>
							<div
								class="se2_l_line_height_user husky_se2m_lineHeight_direct_input">
								<h3>사용자 지정</h3>
								<span class="bx_input"> <input type="text"
									class="input_ty1" maxlength="3" style="width: 75px" title="줄간격">
									<button type="button" title="1% 더하기" class="btn_up">
										<span>1% 더하기</span>
									</button>
									<button type="button" title="1% 빼기" class="btn_down">
										<span>1% 빼기</span>
									</button>
								</span>
								<div class="btn_area">
									<button type="button" class="se2_btn_apply3">
										<span>적용</span>
									</button>
									<button type="button" class="se2_btn_cancel3">
										<span>취소</span>
									</button>
								</div>

							</div>
						</div>
					</div></li>
			</ul>
			<ul>
				<li class="se2_pair husky_seditor_ui_orderedlist"><span
					class="wrap_ui_btn husky_seditor_ui_OrderedlistA"><button
							type="button" title="번호매기기" class="se2_ol se2_orderedlist"
							onclick="ccr(this, 'SE2.orderedlist', event)">
							<span class="_buttonRound tool_bg">번호매기기</span>
						</button></span><span class="wrap_ui_btn_side husky_seditor_ui_OrderedlistB"><button
							type="button" title="더보기"
							class="se2_btn_more se2_orderedlist_more">
							<span class="_buttonRound tool_bg">더보기</span>
						</button></span>
					<div class="se2_layer husky_se2m_orderedlist_layer"
						style="display: none">
						<div class="se2_in_layer">
							<div class="se2_orderedlist">
								<div class="bullets_cover">
									<ul class="se2_background husky_se2m_orderedlist_list">
										<li><button title="none">없음</button></li>
										<li><button class="lst_upper_alpha" title="upper-alpha">
												<i class="blind">upper-alpha</i>
											</button></li>
										<li><button class="lst_upper_roman" title="upper-roman">
												<i class="blind">upper-roman</i>
											</button></li>
										<li><button class="lst_decimal" title="decimal">
												<i class="blind">decimal</i>
											</button></li>
										<li><button class="lst_lower_alpha" title="lower-alpha">
												<i class="blind">lower-alpha</i>
											</button></li>
										<li><button class="lst_lower_roman" title="lower-roman">
												<i class="blind">lower-roman</i>
											</button></li>
									</ul>
								</div>
							</div>
						</div>
					</div></li>
			</ul>
			<ul>
				<li class="se2_pair husky_seditor_ui_unorderedlist"><span
					class="wrap_ui_btn husky_seditor_ui_UnorderedlistA"><button
							type="button" title="글머리기호" class="se2_ul se2_unorderedlist"
							onclick="ccr(this, 'SE2.unorderedlist', event)">
							<span class="_buttonRound tool_bg">글머리기호</span>
						</button></span><span class="wrap_ui_btn_side husky_seditor_ui_UnorderedlistB"><button
							type="button" title="더보기"
							class="se2_btn_more se2_unorderedlist_more">
							<span class="_buttonRound tool_bg">더보기</span>
						</button></span>
					<div class="se2_layer husky_se2m_unorderedlist_layer"
						style="display: none">
						<div class="se2_in_layer">
							<div class="se2_unorderedlist">
								<div class="bullets_cover">
									<ul class="se2_background husky_se2m_unorderedlist_list">
										<li><button title="none">없음</button></li>
										<li><button class="lst_disc" title="disc">
												<i class="blind">disc</i>
											</button></li>
										<li><button class="lst_big_circle" title="big-circle">
												<i class="blind">big_circle</i>
											</button></li>
										<li><button class="lst_check" title="check">
												<i class="blind">check</i>
											</button></li>
										<li><button class="lst_dashed" title="dashed">
												<i class="blind">dashed</i>
											</button></li>
										<li><button class="lst_empty_disc" title="empty-disc">
												<i class="blind">empty_disc</i>
											</button></li>
										<li><button class="lst_square" title="square">
												<i class="blind">square</i>
											</button></li>
										<li><button class="lst_check_green" title="green-check">
												<i class="blind">green_check</i>
											</button></li>
									</ul>
								</div>
							</div>
						</div>
					</div></li>
			</ul>
			<ul>
				<li class="husky_seditor_ui_outdent first_child"><button
						type="button" title="내어쓰기[Shift+Tab]" class="se2_outdent"
						onclick="ccr(this, 'SE2.outdent', event)">
						<span class="_buttonRound tool_bg">내어쓰기[Shift+Tab]</span>
					</button></li>
				<li class="husky_seditor_ui_indent last_child"><button
						type="button" title="들여쓰기[Tab]" class="se2_indent"
						onclick="ccr(this, 'SE2.indent', event)">
						<span class="_buttonRound tool_bg">들여쓰기[Tab]</span>
					</button></li>
			</ul>
			<ul>
				<li class="husky_seditor_ui_hyperlink first_child"><button
						type="button" title="링크" class="se2_url"
						onclick="ccr(this, 'SE2.hyperlink', event)">
						<span class="_buttonRound tool_bg">링크</span>
					</button>

					<div class="se2_layer" style="margin-left: -285px;">
						<div class="se2_in_layer">
							<div class="se2_url2">
								<p class="textfield_cont">
									<label for="temphypertext01">텍스트</label><input type="text"
										id="temphypertext01" class="input_ty1" value="">
								</p>
								<p class="textfield_cont">
									<label for="temphypertext02">링크</label><input type="text"
										id="temphypertext02" class="input_ty1"
										value="https://ui.nboard2.naver.com">
								</p>
								<div class="se2_layer_confirm">
									<a href="#" class="link_check disabled" target="_blank">링크테스트</a>
									<button type="button" class="se2_apply">
										<span>적용</span>
									</button>
									<button type="button" class="se2_cancel">
										<span>취소</span>
									</button>
								</div>
							</div>
						</div>
					</div></li>

				<li class="husky_seditor_ui_emoticon"><button type="button"
						title="이모티콘" class="se2_emoticon"
						onclick="ccr(this, 'SE2.emoticon', event)">
						<span class="_buttonRound">이모티콘</span>
					</button>

					<div class="se2_layer husky_se2m_emoticon_layer"
						style="margin-left: -308px">
						<div class="se2_in_layer">
							<div class="se2_emoticon_set">
								<ul class="se2_imo_tab se2_imo_tab2">
									<li class="active"><button type="button"
											class="se2_imoticon1">
											<span>표정</span>
										</button>

										<div class="se2_imoticon_list">
											<ul>
												<li></li>


											</ul>
										</div></li>
									<li><button type="button" class="se2_imoticon2">
											<span>동식물</span>
										</button>

										<div class="se2_imoticon_list">
											<ul>
												<li></li>
											</ul>
										</div></li>
									<li><button type="button" class="se2_imoticon3">
											<span>사물1</span>
										</button>

										<div class="se2_imoticon_list">
											<ul>
												<li></li>
											</ul>
										</div></li>
									<li><button type="button" class="se2_imoticon4">
											<span>사물2</span>
										</button>

										<div class="se2_imoticon_list">
											<ul>
												<li></li>
											</ul>
										</div></li>
									<li><button type="button" class="se2_imoticon5">
											<span>말풍선</span>
										</button>

										<div class="se2_imoticon_list">
											<ul>
												<li></li>
											</ul>
										</div></li>
								</ul>
							</div>
						</div>
					</div></li>

				<li class="husky_seditor_ui_sCharacter ">
					<button type="button" title="특수기호" class="se2_character"
						onclick="ccr(this, 'SE2.symbol', event)">
						<span class="_buttonRound ">특수기호</span>
					</button>

					<div class="se2_layer husky_seditor_sCharacter_layer"
						style="margin-left: -448px;">
						<div class="se2_in_layer">
							<div class="se2_bx_character">
								<ul class="se2_char_tab">
									<li class="active"><button type="button" title="일반기호"
											class="se2_char1">
											<span>일반기호</span>
										</button>
										<div class="se2_s_character">
											<ul class="husky_se2m_sCharacter_list">
												<li></li>
											</ul>
										</div></li>
									<li><button type="button" title="숫자와 단위" class="se2_char2">
											<span>숫자와 단위</span>
										</button>
										<div class="se2_s_character">
											<ul class="husky_se2m_sCharacter_list">
												<li></li>
											</ul>
										</div></li>
									<li><button type="button" title="원,괄호" class="se2_char3">
											<span>원,괄호</span>
										</button>
										<div class="se2_s_character">
											<ul class="husky_se2m_sCharacter_list">
												<li></li>
											</ul>
										</div></li>



									<li><button type="button" title="한글" class="se2_char4">
											<span>한글</span>
										</button>
										<div class="se2_s_character">
											<ul class="husky_se2m_sCharacter_list">
												<li></li>
											</ul>
										</div></li>
									<li><button type="button" title="그리스,라틴어"
											class="se2_char5">
											<span>그리스,라틴어</span>
										</button>
										<div class="se2_s_character">
											<ul class="husky_se2m_sCharacter_list">
												<li></li>
											</ul>
										</div></li>
									<li><button type="button" title="일본어" class="se2_char6">
											<span>일본어</span>
										</button>
										<div class="se2_s_character">
											<ul class="husky_se2m_sCharacter_list">
												<li></li>
											</ul>
										</div></li>


								</ul>
								<div class="se2_recent_character">
									<span class="se2_tit">최근 사용한 기호</span>
									<div class="se2_s_character" style="display: block;">
										<ul class="husky_se2m_sCharacter_list"></ul>
									</div>
								</div>
								<p class="se2_apply_character">
									<label for="char_preview">선택한 기호</label> <input type="text"
										name="char_preview" id="char_preview" value="®º⊆●○"
										class="input_ty1">
									<button type="button" class="se2_confirm">
										<span>적용</span>
									</button>
									<button type="button"
										class="se2_cancel husky_se2m_sCharacter_close">
										<span>취소</span>
									</button>
								</p>
							</div>
						</div>
					</div>

				</li>

				<li class="husky_seditor_ui_table"><button type="button"
						title="표" class="se2_table"
						onclick="ccr(this, 'SE2.table', event)">
						<span class="_buttonRound">표</span>
					</button>
					<div class="se2_layer generate_table"
						style="margin-left: -171px; display: none;">
						<div class="se2_in_layer">
							<div class="se2_table_set">
								<span class="se2_tit">표 삽입 <em class="cnt"><span
										class="table_col_cnt">1</span> X <span class="table_row_cnt">1</span></em>
								</span>
								<div class="grid_cover">
									<!-- 10 X 13 -->
									<table class="generate_grid">
										<caption>
											<span class="blind">표 만들기</span>
										</caption>
										<tbody>
											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>

											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
										</tbody>
									</table>
									<!-- width: 16 * n / height: 16 * n -->
									<div class="generate_grid_selection"
										style="width: 16px; height: 16px;"></div>
								</div>
								<a href="#" class="utx_btn_se btn_table_set"><span
									class="utx_inrbtn">세부 설정</span></a>
							</div>
						</div>
					</div>
					<div class="se2_layer husky_se2m_table_layer"
						style="margin-left: -171px; display: none">
						<div class="se2_in_layer">
							<div class="se2_table_set">
								<fieldset>
									<legend>칸수 지정</legend>
									<dl class="se2_cell_num">
										<dt>
											<label for="row">행</label>
										</dt>
										<dd>
											<input id="row" name="" type="text" maxlength="2" value="4"
												class="input_ty2">
											<button type="button" class="se2_add">
												<span>1행추가</span>
											</button>
											<button type="button" class="se2_del">
												<span>1행삭제</span>
											</button>
										</dd>
										<dt>
											<label for="col">열</label>
										</dt>
										<dd>
											<input id="col" name="" type="text" maxlength="2" value="4"
												class="input_ty2">
											<button type="button" class="se2_add">
												<span>1열추가</span>
											</button>
											<button type="button" class="se2_del">
												<span>1열삭제</span>
											</button>
										</dd>
									</dl>
									<table border="0" cellspacing="1"
										class="se2_pre_table husky_se2m_table_preview">
										<caption>
											<span class="blind">행렬 미리보기</span>
										</caption>
										<tbody>
											<tr>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
										</tbody>
									</table>
								</fieldset>
								<fieldset>
									<legend>속성직접입력</legend>
									<dl class="se2_t_proper1">
										<dt>
											<input type="radio" id="se2_tbp1" name="se2_tbp" checked=""><label
												for="se2_tbp1">속성직접입력</label>
										</dt>
										<dd>
											<dl class="se2_t_proper1_1">
												<dt>
													<label>테두리스타일</label>
												</dt>
												<dd>
													<div class="se2_select_ty1">
														<span
															class="se2_b_style3 husky_se2m_table_border_style_preview"></span>
														<button type="button" title="더보기" class="se2_view_more">
															<span>더보기</span>
														</button>
													</div>

													<div
														class="se2_layer_b_style husky_se2m_table_border_style_layer"
														style="display: none">
														<ul>
															<li><button type="button" class="se2_b_style1">
																	<span class="se2m_no_border">테두리 없음</span>
																</button></li>
															<li><button type="button" class="se2_b_style2">
																	<span><span>테두리스타일2</span></span>
																</button></li>
															<li><button type="button" class="se2_b_style3">
																	<span><span>테두리스타일3</span></span>
																</button></li>
															<li><button type="button" class="se2_b_style4">
																	<span><span>테두리스타일4</span></span>
																</button></li>
															<li><button type="button" class="se2_b_style5">
																	<span><span>테두리스타일5</span></span>
																</button></li>
															<li><button type="button" class="se2_b_style6">
																	<span><span>테두리스타일6</span></span>
																</button></li>
															<li><button type="button" class="se2_b_style7">
																	<span><span>테두리스타일7</span></span>
																</button></li>
														</ul>
													</div>

												</dd>
											</dl>
											<dl class="se2_t_proper1_1 se2_t_proper1_2">
												<dt>
													<label for="se2_b_width">테두리두께</label>
												</dt>
												<dd>
													<input id="se2_b_width" name="" type="text" maxlength="2"
														value="1" class="input_ty1">
													<button type="button" title="1px 더하기"
														class="se2_add se2m_incBorder">
														<span>1px 더하기</span>
													</button>
													<button type="button" title="1px 빼기"
														class="se2_del se2m_decBorder">
														<span>1px 빼기</span>
													</button>
												</dd>
											</dl>
											<dl class="se2_t_proper1_1 se2_t_proper1_3">
												<dt>
													<label for="se2_b_color">테두리색</label>
												</dt>
												<dd>
													<input id="se2_b_color" name="" type="text" maxlength="7"
														value="#cccccc" class="input_ty3"><span
														class="se2_pre_color"><button type="button"
															style="background: #cccccc;">
															<span>색찾기</span>
														</button></span>

													<div class="se2_layer se2_b_t_b1"
														style="clear: both; display: none; position: absolute; top: 20px; left: -147px;">
														<div
															class="se2_in_layer husky_se2m_table_border_color_pallet">
														</div>
													</div>

												</dd>
											</dl>
											<div class="se2_t_dim0"></div>

											<dl class="se2_t_proper1_1 se2_t_proper1_4">
												<dt>
													<label for="se2_cellbg">셀 배경색</label>
												</dt>
												<dd>
													<input id="se2_cellbg" name="" type="text" maxlength="7"
														value="#ffffff" class="input_ty3"><span
														class="se2_pre_color"><button type="button"
															style="background: #ffffff;">
															<span>색찾기</span>
														</button></span>

													<div class="se2_layer se2_b_t_b1"
														style="clear: both; display: none; position: absolute; top: 20px; left: -147px;">
														<div class="se2_in_layer husky_se2m_table_bgcolor_pallet">
														</div>
													</div>

												</dd>
											</dl>
										</dd>
									</dl>
								</fieldset>
								<fieldset>
									<legend>표 스타일</legend>
									<dl class="se2_t_proper2">
										<dt>
											<input type="radio" id="se2_tbp2" name="se2_tbp"><label
												for="se2_tbp2">스타일 선택</label>
										</dt>
										<dd>
											<div class="se2_select_ty2">
												<span class="se2_t_style1 husky_se2m_table_style_preview"></span>
												<button type="button" title="더보기" class="se2_view_more">
													<span>더보기</span>
												</button>
											</div>

											<div class="se2_layer_t_style husky_se2m_table_style_layer"
												style="display: none">
												<ul class="se2_scroll">
													<li><button type="button" class="se2_t_style1">
															<span>표스타일1</span>
														</button></li>
													<li><button type="button" class="se2_t_style2">
															<span>표스타일2</span>
														</button></li>
													<li><button type="button" class="se2_t_style3">
															<span>표스타일3</span>
														</button></li>
													<li><button type="button" class="se2_t_style4">
															<span>표스타일4</span>
														</button></li>
													<li><button type="button" class="se2_t_style5">
															<span>표스타일5</span>
														</button></li>
													<li><button type="button" class="se2_t_style6">
															<span>표스타일6</span>
														</button></li>
													<li><button type="button" class="se2_t_style7">
															<span>표스타일7</span>
														</button></li>
													<li><button type="button" class="se2_t_style8">
															<span>표스타일8</span>
														</button></li>
													<li><button type="button" class="se2_t_style9">
															<span>표스타일9</span>
														</button></li>
													<li><button type="button" class="se2_t_style10">
															<span>표스타일10</span>
														</button></li>
													<li><button type="button" class="se2_t_style11">
															<span>표스타일11</span>
														</button></li>
													<li><button type="button" class="se2_t_style12">
															<span>표스타일12</span>
														</button></li>
													<li><button type="button" class="se2_t_style13">
															<span>표스타일13</span>
														</button></li>
													<li><button type="button" class="se2_t_style14">
															<span>표스타일14</span>
														</button></li>
													<li><button type="button" class="se2_t_style15">
															<span>표스타일15</span>
														</button></li>
													<li><button type="button" class="se2_t_style16">
															<span>표스타일16</span>
														</button></li>
												</ul>
											</div>

										</dd>
									</dl>
								</fieldset>
								<p class="se2_btn_area">
									<button type="button" class="se2_apply">
										<span>적용</span>
									</button>
									<button type="button" class="se2_cancel">
										<span>취소</span>
									</button>
								</p>

								<div class="se2_t_dim3"></div>

							</div>
						</div>
					</div></li>



				<li class="husky_seditor_ui_findAndReplace"><button
						type="button" title="찾기/바꾸기" class="se2_find"
						onclick="ccr(this, 'SE2.findreplace', event)">
						<span class="_buttonRound">찾기/바꾸기</span>
					</button> <!--@lazyload_html find_and_replace-->
					<div class="se2_layer husky_se2m_findAndReplace_layer"
						style="margin-left: -238px;">
						<div class="se2_in_layer">
							<div class="se2_bx_find_revise">
								<button type="button" title="닫기"
									class="se2_close husky_se2m_cancel">
									<span>닫기</span>
								</button>
								<h3>찾기/바꾸기</h3>
								<ul>
									<li class="active"><button type="button"
											class="se2_tabfind">
											<span>찾기</span>
										</button></li>
									<li><button type="button" class="se2_tabrevise">
											<span>바꾸기</span>
										</button></li>
								</ul>
								<div class="se2_in_bx_find husky_se2m_find_ui"
									style="display: block">
									<dl>
										<dt>
											<label for="find_word">찾을단어</label>
										</dt>
										<dd>
											<input type="text" id="find_word" value="스마트에디터"
												class="input_ty1">
										</dd>
									</dl>
									<p class="se2_find_btns">
										<button type="button"
											class="se2_find_next husky_se2m_find_next">
											<span>다음찾기</span>
										</button>
										<button type="button" class="se2_cancel husky_se2m_cancel">
											<span>취소</span>
										</button>
									</p>
								</div>
								<div class="se2_in_bx_revise husky_se2m_replace_ui"
									style="display: none">
									<dl>
										<dt>
											<label for="find_word2">찾을단어</label>
										</dt>
										<dd>
											<input type="text" id="find_word2" value="스마트에디터"
												class="input_ty1">
										</dd>
										<dt>
											<label for="revise_word">바꿀단어</label>
										</dt>
										<dd>
											<input type="text" id="revise_word" value="스마트에디터"
												class="input_ty1">
										</dd>
									</dl>
									<p class="se2_find_btns">
										<button type="button"
											class="se2_find_next2 husky_se2m_replace_find_next">
											<span>다음찾기</span>
										</button>
										<button type="button" class="se2_revise1 husky_se2m_replace">
											<span>바꾸기</span>
										</button>
										<button type="button"
											class="se2_revise2 husky_se2m_replace_all">
											<span>모두 바꾸기</span>
										</button>
										<button type="button" class="se2_cancel husky_se2m_cancel">
											<span>취소</span>
										</button>
									</p>
								</div>
								<button type="button" title="닫기"
									class="se2_close husky_se2m_cancel">
									<span>닫기</span>
								</button>
							</div>
						</div>
					</div> <!--//@lazyload_html--></li>


				<li class="husky_seditor_ui_spellCheck last_child"><button
						type="button" title="맞춤법검사" class="se2_spelling"
						onclick="ccr(this, 'SE2.spellcheck', event)">
						<span class="_buttonRound tool_bg">맞춤법검사</span>
					</button></li>



			</ul>

			<ul>
				<li><a href="#"
					class="utx_btn_se _ccr(SE2.translator) _c1(mwCore|openTranslatePopup) _stopDefault"><span
						class="utx_inrbtn">번역</span></a></li>
			</ul>
		</div>
	</div>
</body>
</html>