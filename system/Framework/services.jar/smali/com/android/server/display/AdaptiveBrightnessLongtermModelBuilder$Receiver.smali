.class final Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "AdaptiveBrightnessLongtermModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method private constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 2

    .line 1253
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
    .param p2, "x1"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;

    .line 1253
    invoke-direct {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1260
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1261
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->stop()V

    .line 1262
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # invokes: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->scheduleWriteAdaptiveBrightnessLongtermModelBuilderState()V
    invoke-static {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$1000(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    goto :goto_80

    .line 1263
    :cond_31
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1264
    const-string/jumbo v1, "level"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1265
    .local v1, "level":I
    const/4 v3, 0x0

    const-string/jumbo v4, "scale"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1266
    .local v3, "scale":I
    if-eq v1, v2, :cond_52

    if-eqz v3, :cond_52

    .line 1267
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # invokes: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->batteryLevelChanged(II)V
    invoke-static {v2, v1, v3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$1100(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;II)V

    .line 1269
    .end local v1    # "level":I
    .end local v3    # "scale":I
    :cond_52
    goto :goto_80

    :cond_53
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1270
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$900(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_80

    .line 1271
    :cond_6a
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 1272
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$900(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1274
    :cond_80
    :goto_80
    return-void
.end method
