.class public final Lsamsung/uwb/ExtAppConfigParamBuilder;
.super Ljava/lang/Object;
.source "ExtAppConfigParamBuilder.java"


# instance fields
.field extAppConfig:Lsamsung/uwb/ConfigParamTlv;

.field private mExtAppConfigParamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsamsung/uwb/ConfigParamTlv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsamsung/uwb/ExtAppConfigParamBuilder;->mExtAppConfigParamList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addToList(Lsamsung/uwb/ConfigParamTlv;)V
    .registers 4
    .param p1, "extAppConfigParam"    # Lsamsung/uwb/ConfigParamTlv;

    .line 78
    iget-object v0, p0, Lsamsung/uwb/ExtAppConfigParamBuilder;->mExtAppConfigParamList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 79
    iget-object v0, p0, Lsamsung/uwb/ExtAppConfigParamBuilder;->mExtAppConfigParamList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 80
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 81
    iget-object v1, p0, Lsamsung/uwb/ExtAppConfigParamBuilder;->mExtAppConfigParamList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 83
    .end local v0    # "index":I
    :cond_16
    goto :goto_1c

    .line 84
    :cond_17
    iget-object v0, p0, Lsamsung/uwb/ExtAppConfigParamBuilder;->mExtAppConfigParamList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_1c
    return-void
.end method

.method public get()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsamsung/uwb/ConfigParamTlv;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lsamsung/uwb/ExtAppConfigParamBuilder;->mExtAppConfigParamList:Ljava/util/List;

    return-object v0
.end method

.method public setCirCaptureMode(B)Lsamsung/uwb/ExtAppConfigParamBuilder;
    .registers 6
    .param p1, "cirCaptureMode"    # B

    .line 30
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "E301"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/ExtAppConfigParamBuilder;->extAppConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 31
    invoke-virtual {p0, v0}, Lsamsung/uwb/ExtAppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 32
    return-object p0
.end method

.method public setDualAoaPreambleSts(B)Lsamsung/uwb/ExtAppConfigParamBuilder;
    .registers 6
    .param p1, "dualAoaPreambleSts"    # B

    .line 66
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "E30A"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/ExtAppConfigParamBuilder;->extAppConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 67
    invoke-virtual {p0, v0}, Lsamsung/uwb/ExtAppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 68
    return-object p0
.end method

.method public setMacPayloadEncryption(B)Lsamsung/uwb/ExtAppConfigParamBuilder;
    .registers 6
    .param p1, "macPayloadEncryption"    # B

    .line 36
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "E302"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/ExtAppConfigParamBuilder;->extAppConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 37
    invoke-virtual {p0, v0}, Lsamsung/uwb/ExtAppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 38
    return-object p0
.end method

.method public setScheduledStatusNtf(B)Lsamsung/uwb/ExtAppConfigParamBuilder;
    .registers 6
    .param p1, "scheduledStatusNtf"    # B

    .line 54
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "E307"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/ExtAppConfigParamBuilder;->extAppConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 55
    invoke-virtual {p0, v0}, Lsamsung/uwb/ExtAppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 56
    return-object p0
.end method

.method public setSessionSchedAttempts(B)Lsamsung/uwb/ExtAppConfigParamBuilder;
    .registers 6
    .param p1, "sessionSchedAttempts"    # B

    .line 48
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "E306"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/ExtAppConfigParamBuilder;->extAppConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 49
    invoke-virtual {p0, v0}, Lsamsung/uwb/ExtAppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 50
    return-object p0
.end method

.method public setSessionSyncAttempts(B)Lsamsung/uwb/ExtAppConfigParamBuilder;
    .registers 6
    .param p1, "sessionSyncAttempts"    # B

    .line 42
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "E305"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/ExtAppConfigParamBuilder;->extAppConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 43
    invoke-virtual {p0, v0}, Lsamsung/uwb/ExtAppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 44
    return-object p0
.end method

.method public setToaMode(B)Lsamsung/uwb/ExtAppConfigParamBuilder;
    .registers 6
    .param p1, "toaMode"    # B

    .line 24
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "E300"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/ExtAppConfigParamBuilder;->extAppConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 25
    invoke-virtual {p0, v0}, Lsamsung/uwb/ExtAppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 26
    return-object p0
.end method

.method public setTxPowerDeltaFcc(B)Lsamsung/uwb/ExtAppConfigParamBuilder;
    .registers 6
    .param p1, "txPowerDeltaFcc"    # B

    .line 60
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "E308"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/ExtAppConfigParamBuilder;->extAppConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 61
    invoke-virtual {p0, v0}, Lsamsung/uwb/ExtAppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 62
    return-object p0
.end method

.method public setTxPowerTempCompensation(B)Lsamsung/uwb/ExtAppConfigParamBuilder;
    .registers 6
    .param p1, "txPowerTempCompensation"    # B

    .line 72
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "E30B"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/ExtAppConfigParamBuilder;->extAppConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 73
    invoke-virtual {p0, v0}, Lsamsung/uwb/ExtAppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 74
    return-object p0
.end method
