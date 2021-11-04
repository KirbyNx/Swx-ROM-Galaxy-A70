.class public Lcom/samsung/ucm/ucmservice/UcmServiceODE;
.super Ljava/lang/Object;
.source "UcmServiceODE.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UcmServiceODE"

.field public static final UCM_ENCRYPTION_CHECK_PROPERTY:Ljava/lang/String; = "persist.security.ucm_fbe_mode"

.field static final UCM_ODE_MODE_FILE_PATH:Ljava/lang/String; = "/efs/sec_efs/ucm_ode_mode"

.field static final UCM_ODE_STATE_ENABLED:I = 0x2

.field static final UCM_ODE_STATE_ENABLING:I = 0x1

.field static final UCM_ODE_STATE_NONE:I = 0x0

.field static final UCM_ODE_STATE_NOT_INIT:I = -0x1

.field private static sOdeStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const/4 v0, -0x1

    sput v0, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getOdeStatus()I
    .registers 2

    .line 28
    sget v0, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 29
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->updateOdeStatus()V

    .line 31
    :cond_8
    sget v0, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    return v0
.end method

.method static isUCMODEEnabledWithPropFile()Z
    .registers 3

    .line 39
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->getOdeStatus()I

    move-result v0

    const-string v1, "UcmServiceODE"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    .line 40
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v0

    .line 41
    .local v0, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    if-eqz v0, :cond_1a

    iget v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    if-eqz v2, :cond_1a

    .line 42
    const-string v2, "UCM ODE is enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v1, 0x1

    return v1

    .line 47
    .end local v0    # "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    :cond_1a
    const-string v0, "UCM ODE is not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method static isUcmOdeEnabled()Z
    .registers 2

    .line 35
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->getOdeStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static updateOdeStatus()V
    .registers 2

    .line 22
    const-string v0, "/efs/sec_efs/ucm_ode_mode"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->readIntFromFile(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOdeStatus ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmServiceODE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget v0, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.security.ucm_fbe_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method
