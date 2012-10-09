<%@ Page Language="C#" %>

<%@ Register assembly="Ext.Net" namespace="Ext.Net" tagprefix="ext" %>

<!DOCTYPE html>
    
<html>
<head runat="server">
    <title>Ext.NET Example</title>
</head>
<body>
    <form runat="server">
        <ext:ResourceManager runat="server" Theme="Gray" DisableViewState="True" />
        
        <a href="http://www.ext.net/"><img src="http://speed.ext.net/identity/extnet-logo-small.png" /></a>

        <ext:Window 
            runat="server" 
            Title="Welcome to Ext.NET 2.0"
            Height="215"
            Width="350"
            BodyPadding="5"
            DefaultButton="0"
            Layout="AnchorLayout"
            DefaultAnchor="100%">
            <Items>
                <ext:TextArea 
                    ID="TextArea1" 
                    runat="server" 
                    EmptyText=">> Enter a Message Here <<"
                    FieldLabel="Message" 
                    Height="85" 
                    />
            </Items>
            <Buttons>
                <ext:Button 
                    runat="server" 
                    Text="Submit"
                    Icon="Accept" 
                    >
                    <Listeners>
                        <Click Handler="Ext.MessageBox.alert('Hello', #{TextArea1}.getValue())"></Click>
                    </Listeners>
                </ext:Button>
            </Buttons>
        </ext:Window>
    </form>
</body>
</html>