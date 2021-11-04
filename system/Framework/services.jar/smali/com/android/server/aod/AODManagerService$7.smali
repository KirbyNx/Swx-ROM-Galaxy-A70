.class Lcom/android/server/aod/AODManagerService$7;
.super Landroid/database/ContentObserver;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService;->registerAODClockContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/aod/AODManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1117
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$7;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1119
    if-nez p2, :cond_3

    .line 1120
    return-void

    .line 1122
    :cond_3
    # getter for: Lcom/android/server/aod/AODManagerService;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$2300()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1123
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$7;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->getAODClockType()I
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$2500(Lcom/android/server/aod/AODManagerService;)I

    move-result v1

    div-int/lit16 v1, v1, 0x2710

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    # setter for: Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z
    invoke-static {v0, v2}, Lcom/android/server/aod/AODManagerService;->access$2402(Lcom/android/server/aod/AODManagerService;Z)Z

    .line 1124
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange: mIsAODAnalogLiveClock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$7;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$2400(Lcom/android/server/aod/AODManagerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_3c
    return-void
.end method
