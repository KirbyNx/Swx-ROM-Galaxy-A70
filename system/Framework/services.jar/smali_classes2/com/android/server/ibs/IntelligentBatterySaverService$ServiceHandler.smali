.class Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;
.super Landroid/os/Handler;
.source "IntelligentBatterySaverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 130
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 131
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    goto :goto_27

    .line 147
    :cond_f
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverService;->forceApplyEveryPolicy()V
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->access$300(Lcom/android/server/ibs/IntelligentBatterySaverService;)V

    .line 148
    goto :goto_27

    .line 144
    :cond_15
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverService;->getSCPMPolicyItemFromDB()V
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->access$200(Lcom/android/server/ibs/IntelligentBatterySaverService;)V

    .line 145
    goto :goto_27

    .line 141
    :cond_1b
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverService;->forceResetEveryPolicy()V
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->access$100(Lcom/android/server/ibs/IntelligentBatterySaverService;)V

    .line 142
    goto :goto_27

    .line 138
    :cond_21
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverService;->updateSCPMParametersFromDB()V
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->access$000(Lcom/android/server/ibs/IntelligentBatterySaverService;)V

    .line 139
    nop

    .line 152
    :goto_27
    return-void
.end method
