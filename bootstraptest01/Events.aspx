<%@ Page Title="" Language="C#" MasterPageFile="~/bootstraptest1master.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="bootstraptest01.Events" %>

<asp:Content ID="Events" ContentPlaceHolderID="FeaturedProducts" runat="server">
	<div class="front">
		<div class="container">
			<%-- <ul class="breadcrumb">
					<li><a href="Default.aspx">Home</a><span class="divider">/</span></li>
					<li class="active">Events</li>
				</ul>--%>

			<div class="page-header">
				<h1>Kommende Events. <small>Lad romantiken blomstre</small></h1>
			</div>

			<div class="accordion" id="my-accordion">
				<div class="accordion-group uneven">
					<div class="accordion-heading">

						<div class="row-fluid">
							<div class="span5">
								<a href="#collapse-1" data-toggle="collapse" data-parent="#my-accordion" class="accordion-toggle">
									<asp:Image ID="Image1" runat="server" AlternateText="demo" ImageUrl="http://lorempixel.com/600/300/nature" CssClass="image-featured img-rounded event-img pull-left" /></a>
							</div>
							<div class="span4">
								<h3 class="text-featured" runat="server" id="headline1">Sensommer i den romatiske have</h3>
								<div class="my-summery">
								   <asp:Label ID="LabelSummery1" runat="server" CssClass="lead">Landbrughøjskolens have bliver også kaldt den romantiske have, og med god grund. læs mere om vores event her</asp:Label><br />
									<a class="" href="#collapse-1" data-toggle="collapse" data-parent="#my-accordion">Læs mere</a>
								</div>
								
								
							</div>
							<div class="span2 offset1">
								<div class="event-info text-left">
									<p class="text-info" runat="server" id="EventDate"><strong></strong></p>
								<p class="text-info" runat="server" id="EventTime"><strong></strong></p>
								<p class="text-info" runat="server" id="EventPrice"><strong></strong></p>
									<p class="text-info" runat="server" id="AgeGroup"><strong></strong></p>
									<asp:Button ID="ButtonSignup1" runat="server" Text="Tilmeld mig" CssClass="btn btn-featured btn-large event-signup-btn" />

									</div>
								
								</div>
							</div>

						</div>


				   
					<div class="accordion-body collapse" id="collapse-1">
						<div class="accordion-inner">
							<div class="row">
								<div class="span4">
									<p class="lead">Den romantiske have</p>
									<p>
										hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, 
								vil du med på turhej med dig, vil du med på turhej med dig, vil du med på 
								turhej med dig, vil du med på turhej med dig,
								 vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
								hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
								hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
									</p>
								</div>
								<div class="span4">
									<p class="lead">Alt det praktiske</p>
									<p>
										hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, 
								vil du med på turhej med dig, vil du med på turhej med dig, vil du med på 
								turhej med dig, vil du med på turhej med dig,
								 vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
								hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
								hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
									</p>
								</div>

							</div>
						</div>
					</div>
				</div>

				<div class="accordion-group even">
					<div class="accordion-heading">

						<div class="row">
							<div class="span6">
								<a href="#collapse-2" data-toggle="collapse" data-parent="#my-accordion" class="accordion-toggle">
									<asp:Image ID="Image2" runat="server" AlternateText="demo" ImageUrl="http://lorempixel.com/600/300/nature" CssClass="image-featured img-rounded event-img pull-left" /></a>
							</div>
							<div class="span4 offset1">
								<h3 class="text-featured" runat="server" id="headline2">Sensommer i den romatiske have</h3>
								 <div class="my-summery">
								   <asp:Label ID="LabelSummery2" runat="server" CssClass="lead">Landbrughøjskolens have bliver også kaldt den romantiske have, og med god grund. læs mere om vores event her</asp:Label><br />
									<a class="" href="#collapse-2" data-toggle="collapse" data-parent="#my-accordion">Læs mere</a>
								</div>
								<div class="pull-right signup-for-event">
									<asp:Button ID="Button2" runat="server" Text="Tilmeld mig" CssClass="btn btn-featured btn-large" />
								</div>
							</div>

						</div>
					</div>
				


			
			<div class="accordion-body collapse" id="collapse-2">
				<div class="accordion-inner">
					<div class="row">
						<div class="span4">
							<p class="lead">Den romantiske have</p>
							<p>
								hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, 
								vil du med på turhej med dig, vil du med på turhej med dig, vil du med på 
								turhej med dig, vil du med på turhej med dig,
								 vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
								hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
								hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
							</p>
						</div>
						<div class="span4">
							<p class="lead">Alt det praktiske</p>
							<p>
								hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, 
								vil du med på turhej med dig, vil du med på turhej med dig, vil du med på 
								turhej med dig, vil du med på turhej med dig,
								 vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
								hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
								hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
							</p>

						</div>
					</div>
				</div>
				</div>
				</div>
		

				<div class="accordion-group uneven">
					<div class="accordion-heading">
						<div class="row">
							<div class="span6">
								<a href="#collapse-3" data-toggle="collapse" data-parent="#my-accordion" class="accordion-toggle">
									<asp:Image ID="Image3" runat="server" AlternateText="demo" ImageUrl="http://lorempixel.com/600/300/nature" CssClass="image-featured img-rounded event-img pull-left" /></a>
							</div>
							<div class="span4 offset1">
								<h3 class="text-featured" runat="server" id="headline3">Sensommer i den romatiske have</h3>
								 <div class="my-summery">
								   <asp:Label ID="LabelSummery3" runat="server" CssClass="lead">Landbrughøjskolens have bliver også kaldt den romantiske have, og med god grund. læs mere om vores event her</asp:Label><br />
									<a class="" href="#collapse-3" data-toggle="collapse" data-parent="#my-accordion">Læs mere</a>
								</div>
								<div class="pull-right signup-for-event">
									<asp:Button ID="Button3" runat="server" Text="Tilmeld mig" CssClass="btn btn-featured btn-large" />
								</div>
							</div>

						</div>
					</div>

					<div class="accordion-body collapse" id="collapse-3">
						<div class="accordion-inner">
							<div class="row">
								<div class="span4">
									<p class="lead">Den romantiske have</p>
									<p>
										hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, 
								vil du med på turhej med dig, vil du med på turhej med dig, vil du med på 
								turhej med dig, vil du med på turhej med dig,
								 vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
								hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
								hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
									</p>
								</div>
								<div class="span4">
									<p class="lead">Alt det praktiske</p>
									<p>
										hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, 
								vil du med på turhej med dig, vil du med på turhej med dig, vil du med på 
								turhej med dig, vil du med på turhej med dig,
								 vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
								hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
								hej med dig, vil du med på turhej med dig, vil du med på turhej med dig, vil du med på tur
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- modal event signup -->

			<a href="#my-modal" class="btn" data-toggle="modal">show modal</a>
			<div class="modal hide fade" id="my-modal">
				<div class="modal-header">
				<button class="close" data-dismiss="modal">&times;</button>
					<h3>Tilmeld mig til Walkdating event</h3>
					<br />
					<h4 class="text-muted">Den romatiske have</h4>
					<p class="text-info"> Mandag d.17-10-2013 kl 17:00</p>
				</div>
				<div class="modal-body">
					<p>body</p>
				</div>
				<div class="modal-footer">
					<p>footer</p>
					<a href="#my-modal" class="btn" data-dismiss="modal">Cancel</a>
				</div>
			</div>
		</div>
	</div>






</asp:Content>
