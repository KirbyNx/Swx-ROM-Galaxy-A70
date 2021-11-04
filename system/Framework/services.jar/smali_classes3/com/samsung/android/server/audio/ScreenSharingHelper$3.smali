.class Lcom/samsung/android/server/audio/ScreenSharingHelper$3;
.super Landroid/content/BroadcastReceiver;
.source "ScreenSharingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/ScreenSharingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 258
    iput-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 261
    if-nez p2, :cond_3

    return-void

    .line 263
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_START_SMARTVIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "AS.ScreenSharingHelper"

    if-eqz v0, :cond_23

    .line 264
    const-string v0, "Enable presentation mode"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    # setter for: Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsPresentationMode:Z
    invoke-static {v0, v2}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->access$502(Lcom/samsung/android/server/audio/ScreenSharingHelper;Z)Z

    .line 266
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setMirroingPolicyParameter(Z)V

    goto :goto_3e

    .line 267
    :cond_23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.samsung.intent.action.SEC_PRESENTATION_STOP_SMARTVIEW"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 268
    const-string v0, "Disable presentation mode"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    # setter for: Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsPresentationMode:Z
    invoke-static {v0, v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->access$502(Lcom/samsung/android/server/audio/ScreenSharingHelper;Z)Z

    .line 270
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setMirroingPolicyParameter(Z)V

    .line 272
    :cond_3e
    :goto_3e
    return-void
.end method
