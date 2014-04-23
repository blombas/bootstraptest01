<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WucEvent.ascx.cs" Inherits="bootstraptest01.WucEvent" %>


<div class="row wuc-event">
    <asp:HiddenField ID="HiddenFieldEventId" runat="server" />
        <div class="col-md-12">
          <div class="panel panel-default">
            <div class="panel-heading">
              <br>
              <div class="row">
                <div class="hidden-xs col-xs-8 col-md-8 col-lg-8">
                  <img class="media-object pull-left visible-md img-rounded img-responsive" src="https://lorempixel.com/650/350">
                  <div class="media">
                    <a class="pull-left" href="#">    <img class="media-object visible-sm img-responsive" src="https://lorempixel.com/700/400">  </a>
                    <div class="media-body"></div>
                  </div>
                </div>
                <div class="pull-left col-md-4 col-lg-8">
                  <img src="https://lorempixel.com/780/400" class="visible-lg img-rounded img-responsive">
                </div>
                <div class="col-sm-4 col-md-4">
                  <div class="media">
                    <a class="pull-left" href="#">      </a>
                    <div class="media-body"></div>
                  </div>
                   
                  
                    
                  
                    <h3 class="event-heading pull-left" runat="server" id="EventHeading"></h3>
                    <img src="https://lorempixel.com/175/100" class="pull-center visible-xs img-responsive">
                    <p class="lead event-location text-muted" runat="server" id="location"></p>
                  
                  <ul class="list-group">
                    <li class="list-group-item" runat="server" id="EventStart"></li>
                    <li class="list-group-item" runat="server" id="Hour"></li>
                    <li class="list-group-item" runat="server" id="PriceTag"></li>
                    <li class="list-group-item" runat="server" id="AgeGroup"></li>
                    <li class="list-group-item text-info" runat="server">
                        <p runat="server" id="LastSignupDate"></p>
                        <strong runat="server" id="FreeSeats"></strong></li>
                  </ul>
                  <asp:Button ID="ButtonSignup" runat="server" Text="Tilmeld dig" CssClass="btn btn-large btn-custom-spin" OnClick="ButtonSignup_Click" />
                  <div class="alert-danger" id="EventWarningText" runat="server" Visible="false">
                  </div>  
                </div>
              </div>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-6">
                  <h4 runat="server" id="EventHookline">Lidt om stedet</h4>
                  <p runat="server" id="EventInfoText"></p>
                </div>
                <div class="col-md-6">
                  <h4>Alt det praktiske</h4>
                  <p id="EventPraticalText" runat="server"></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>