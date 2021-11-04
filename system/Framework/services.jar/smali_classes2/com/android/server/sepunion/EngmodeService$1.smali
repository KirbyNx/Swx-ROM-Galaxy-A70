.class Lcom/android/server/sepunion/EngmodeService$1;
.super Ljava/util/TimerTask;
.source "EngmodeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/EngmodeService;->makeTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/EngmodeService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/EngmodeService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/EngmodeService;

    .line 78
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # invokes: Lcom/android/server/sepunion/EngmodeService;->isTokenInstalled()Z
    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->access$000(Lcom/android/server/sepunion/EngmodeService;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    .line 82
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # setter for: Lcom/android/server/sepunion/EngmodeService;->mEMServerDate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/sepunion/EngmodeService;->access$102(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-virtual {v0}, Lcom/android/server/sepunion/EngmodeService;->getServerTime()J

    .line 84
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # getter for: Lcom/android/server/sepunion/EngmodeService;->mEMServerDate:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->access$100(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    .line 85
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-virtual {v0}, Lcom/android/server/sepunion/EngmodeService;->getServerTime()J

    .line 87
    :cond_20
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # getter for: Lcom/android/server/sepunion/EngmodeService;->mEMServerDate:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->access$100(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # invokes: Lcom/android/server/sepunion/EngmodeService;->getEmManager()Z
    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->access$200(Lcom/android/server/sepunion/EngmodeService;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 88
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # getter for: Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->access$300(Lcom/android/server/sepunion/EngmodeService;)Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    move-result-object v0

    const v1, 0xff0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    goto :goto_57

    .line 90
    :cond_3d
    const-string v0, "engmode_service"

    const-string v2, "Token isn\'t exists, Stop timer"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :try_start_44
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # getter for: Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->access$400(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4d} :catch_4e

    .line 95
    goto :goto_52

    .line 93
    :catch_4e
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_52
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # setter for: Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/android/server/sepunion/EngmodeService;->access$402(Lcom/android/server/sepunion/EngmodeService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 98
    :cond_57
    :goto_57
    return-void
.end method
