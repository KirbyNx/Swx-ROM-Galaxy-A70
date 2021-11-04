.class final Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AdaptiveBrightnessLongtermModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1236
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 1237
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1238
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "settings change "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;
    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$800(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$700(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1246
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$900(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_46

    .line 1248
    :cond_38
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$900(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1250
    :goto_46
    return-void
.end method
