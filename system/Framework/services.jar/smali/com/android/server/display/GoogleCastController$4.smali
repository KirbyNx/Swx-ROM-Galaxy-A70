.class Lcom/android/server/display/GoogleCastController$4;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "GoogleCastController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/GoogleCastController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/GoogleCastController;


# direct methods
.method constructor <init>(Lcom/android/server/display/GoogleCastController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/GoogleCastController;

    .line 161
    iput-object p1, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 7
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 164
    if-eqz p2, :cond_c1

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c1

    .line 165
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$200(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    const-string v1, "GoogleCastController"

    if-nez v0, :cond_77

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_77

    .line 166
    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_36

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Audio Mirroring"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 167
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRouteChanged() GoogleCast is connected. route = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$300(Lcom/android/server/display/GoogleCastController;)Lcom/android/server/display/ControllerUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/ControllerUtils;->startControllerService()V

    .line 169
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/display/GoogleCastController;->broadcastGoogleCastState(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$400(Lcom/android/server/display/GoogleCastController;I)V

    .line 170
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # invokes: Lcom/android/server/display/GoogleCastController;->handleConnectionStateChanged(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$500(Lcom/android/server/display/GoogleCastController;I)V

    .line 171
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # setter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0, p2}, Lcom/android/server/display/GoogleCastController;->access$202(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    .line 172
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$600(Lcom/android/server/display/GoogleCastController;)Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/display/SemDeviceInfo;->setRemoteDisplayState(I)V

    .line 173
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$200(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    # invokes: Lcom/android/server/display/GoogleCastController;->setLastConnectedGoogleCast(Landroid/media/MediaRouter$RouteInfo;)V
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$700(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_c1

    .line 174
    :cond_77
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$200(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_c1

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$200(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;
    invoke-static {v2}, Lcom/android/server/display/GoogleCastController;->access$800(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v3}, Lcom/android/server/display/GoogleCastController;->access$200(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    if-eq v0, v2, :cond_c1

    .line 175
    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_c1

    .line 176
    const-string/jumbo v0, "onRouteChanged() GoogleCast is disconnected."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/display/GoogleCastController;->broadcastGoogleCastState(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$400(Lcom/android/server/display/GoogleCastController;I)V

    .line 178
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # invokes: Lcom/android/server/display/GoogleCastController;->handleConnectionStateChanged(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$500(Lcom/android/server/display/GoogleCastController;I)V

    .line 179
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$202(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    .line 180
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$800(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 183
    :cond_c1
    :goto_c1
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 6
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 200
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$200(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    .line 201
    # getter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$200(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;
    invoke-static {v1}, Lcom/android/server/display/GoogleCastController;->access$800(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v2}, Lcom/android/server/display/GoogleCastController;->access$200(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-eq v0, v1, :cond_66

    .line 202
    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    .line 203
    # getter for: Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$800(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v1}, Lcom/android/server/display/GoogleCastController;->access$200(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 204
    const-string v0, "GoogleCastController"

    const-string/jumbo v1, "onRouteRemoved() GoogleCast is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/display/GoogleCastController;->broadcastGoogleCastState(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$400(Lcom/android/server/display/GoogleCastController;I)V

    .line 206
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # invokes: Lcom/android/server/display/GoogleCastController;->handleConnectionStateChanged(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$500(Lcom/android/server/display/GoogleCastController;I)V

    .line 207
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$202(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    .line 208
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$800(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 210
    :cond_66
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 6
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 187
    if-eqz p3, :cond_38

    const/4 v0, 0x7

    invoke-virtual {p3, v0}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_38

    .line 188
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_38

    .line 189
    const-string v0, "GoogleCastController"

    const-string/jumbo v1, "onRouteUnselected() GoogleCast is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/display/GoogleCastController;->broadcastGoogleCastState(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$400(Lcom/android/server/display/GoogleCastController;I)V

    .line 191
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # invokes: Lcom/android/server/display/GoogleCastController;->handleConnectionStateChanged(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$500(Lcom/android/server/display/GoogleCastController;I)V

    .line 192
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v0, v1}, Lcom/android/server/display/GoogleCastController;->access$202(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    .line 193
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$4;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$800(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 196
    :cond_38
    return-void
.end method
