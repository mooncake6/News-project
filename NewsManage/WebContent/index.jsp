<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>GLOBAL NEWS</title>
<link type="text/css" rel="styleSheet" href="css/style.css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<ul class="nav nav-pills">
					<li class="active"><a href="#">首页</a></li>
					<li class="dropdown"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle">新闻管理<strong
							class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="newsPublish.jsp">发布</a></li>
							<li><a href="newsAmend.jsp">修改</a></li>
						</ul></li>
					<li><a href="#">其他</a></li>
					<li class="dropdown pull-right"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle">帐号管理<strong
							class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="#">新建帐号</a></li>
							<li><a href="#">修改帐号</a></li>
						</ul></li>
				</ul>
				<div class="carousel slide" id="carousel-544312">
					<ol class="carousel-indicators">
						<li class="active" data-slide-to="0"
							data-target="#carousel-544312"></li>
						<li data-slide-to="1" data-target="#carousel-544312"></li>
						<li data-slide-to="2" data-target="#carousel-544312"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<img alt="" src="img/1.jpg" />
							<div class="carousel-caption">
								<h4>棒球</h4>
								<p>棒球运动是一种以棒打球为主要特点，集体性、对抗性很强的球类运动项目，在美国、日本尤为盛行。</p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="img/2.jpg" />
							<div class="carousel-caption">
								<h4>冲浪</h4>
								<p>
									冲浪是以海浪为动力，利用自身的高超技巧和平衡能力，搏击海浪的一项运动。运动员站立在冲浪板上，或利用腹板、跪板、充气的橡皮垫、划艇、皮艇等驾驭海浪的一项水上运动。
								</p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="img/3.jpg" />
							<div class="carousel-caption">
								<h4>自行车</h4>
								<p>
									以自行车为工具比赛骑行速度的体育运动。1896年第一届奥林匹克运动会上被列为正式比赛项目。环法赛为最著名的世界自行车锦标赛。
								</p>
							</div>
						</div>
					</div>
					<a data-slide="prev" href="#carousel-544312"
						class="left carousel-control">‹</a> <a data-slide="next"
						href="#carousel-544312" class="right carousel-control">›</a>
				</div>
				<ul class="thumbnails">
					<li class="span4">
						<div class="thumbnail">
							<img alt="300x200" src="img/people.jpg" />
							<div class="caption">
								<h3>冯诺尔曼结构</h3>
								<p>
									也称普林斯顿结构，是一种将程序指令存储器和数据存储器合并在一起的存储器结构。程序指令存储地址和数据存储地址指向同一个存储器的不同物理位置。
								</p>
								<p>
									<a class="btn btn-primary" href="#">浏览</a> <a class="btn"
										href="#">分享</a>
								</p>
							</div>
						</div>
					</li>
					<li class="span4">
						<div class="thumbnail">
							<img alt="300x200" src="img/city.jpg" />
							<div class="caption">
								<h3>哈佛结构</h3>
								<p>
									哈佛结构是一种将程序指令存储和数据存储分开的存储器结构，它的主要特点是将程序和数据存储在不同的存储空间中，进行独立编址。</p>
								<p>
									<a class="btn btn-primary" href="#">浏览</a> <a class="btn"
										href="#">分享</a>
								</p>
							</div>
						</div>
					</li>
					<li class="span4">
						<div class="thumbnail">
							<img alt="300x200" src="img/sports.jpg" />
							<div class="caption">
								<h3>改进型哈佛结构</h3>
								<p>
									改进型的哈佛结构具有一条独立的地址总线和一条独立的数据总线，两条总线由程序存储器和数据存储器分时复用，使结构更紧凑。</p>
								<p>
									<a class="btn btn-primary" href="#">浏览</a> <a class="btn"
										href="#">分享</a>
								</p>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>