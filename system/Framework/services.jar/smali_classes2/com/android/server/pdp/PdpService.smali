.class public Lcom/android/server/pdp/PdpService;
.super Lcom/android/server/SystemService;
.source "PdpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pdp/PdpService$SvcPdpHandler;
    }
.end annotation


# static fields
.field private static final MSG_DISPLAY_PDPTOAST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PdpService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

.field private mSvcPdpThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 150
    iput-object p1, p0, Lcom/android/server/pdp/PdpService;->mContext:Landroid/content/Context;

    .line 151
    new-instance v0, Lcom/android/server/pdp/PdpService$1;

    const-string/jumbo v1, "mSvcPdpThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/pdp/PdpService$1;-><init>(Lcom/android/server/pdp/PdpService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpThread:Landroid/os/HandlerThread;

    .line 157
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 158
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/pdp/PdpService;Lcom/android/server/pdp/PdpService$SvcPdpHandler;)Lcom/android/server/pdp/PdpService$SvcPdpHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pdp/PdpService;
    .param p1, "x1"    # Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    .line 33
    iput-object p1, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/pdp/PdpService;)Landroid/os/HandlerThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pdp/PdpService;

    .line 33
    iget-object v0, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpThread:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method public handleDisplayPDPToast(Ljava/lang/String;I)V
    .registers 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "times"    # I

    .line 43
    const-string v0, "PdpService"

    const-string v1, "[PDP] displayPDPToast start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_8
    if-gt v1, p2, :cond_24

    .line 46
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pdp/PdpService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 47
    .local v2, "toast":Landroid/widget/Toast;
    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 48
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_1d

    .line 45
    .end local v2    # "toast":Landroid/widget/Toast;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 50
    .end local v1    # "i":I
    :catch_1d
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "[PDP] Toast exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 52
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_24
    nop

    .line 53
    :goto_25
    const-string v1, "[PDP] displayPDPToast end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 142
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_e

    .line 143
    const-string v0, "PdpService"

    const-string v1, "[PDP] PHASE_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/android/server/pdp/PdpService;->pdpServiceReady()V

    .line 146
    :cond_e
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 137
    const-string v0, "PdpService"

    const-string v1, "[PDP] onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public pdpServiceReady()V
    .registers 6

    .line 127
    const-string v0, "PdpService"

    const-string v1, "[PDP] pdpServiceReady >"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->removeMessages(I)V

    .line 129
    iget-object v1, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 131
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    const-wide/16 v3, 0x1770

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 132
    const-string v2, "[PDP] pdpServiceReady <"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method
