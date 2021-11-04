.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
.super Ljava/lang/Object;
.source "SoundTriggerHw2Enforcer.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SoundTriggerHw2Enforcer"


# instance fields
.field mModelStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;)V
    .registers 3
    .param p1, "underlying"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    .line 51
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    .line 52
    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .line 43
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->rebootHal()V

    return-void
.end method

.method private static handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .registers 4
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 203
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/RemoteException;

    const-string v1, "SoundTriggerHw2Enforcer"

    if-eqz v0, :cond_21

    .line 204
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HwBinder Error: (-32)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_21

    .line 206
    :cond_1b
    const-string v0, "HAL died"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 208
    :cond_21
    :goto_21
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "startRecognition (code -16)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 210
    const-string v0, "Ignore failure"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 215
    :cond_34
    const-string v0, "Exception caught from HAL, rebooting HAL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->rebootHal()V

    .line 219
    :goto_3c
    throw p0
.end method

.method private static rebootHal()V
    .registers 2

    .line 224
    const-string/jumbo v0, "sys.audio.restart.hal"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method


# virtual methods
.method public getModelParameter(II)I
    .registers 5
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getModelParameter(II)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 161
    :catch_7
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getModelState(I)V
    .registers 4
    .param p1, "modelHandle"    # I

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getModelState(I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_7

    .line 154
    nop

    .line 155
    return-void

    .line 152
    :catch_7
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProperties()Landroid/hardware/soundtrigger/V2_3/Properties;
    .registers 3

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getProperties()Landroid/hardware/soundtrigger/V2_3/Properties;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 58
    :catch_7
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 186
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
    .registers 9
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p3, "cookie"    # I

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$1;)V

    invoke-interface {v0, p1, v1, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I

    move-result v0

    .line 85
    .local v0, "handle":I
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_f} :catch_22

    .line 86
    :try_start_f
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    monitor-exit v1

    .line 88
    return v0

    .line 87
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_1f

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .end local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .end local p3    # "cookie":I
    :try_start_21
    throw v2
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_22} :catch_22

    .line 89
    .end local v0    # "handle":I
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .restart local p1    # "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .restart local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .restart local p3    # "cookie":I
    :catch_22
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public loadSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
    .registers 9
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p3, "cookie"    # I

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$1;)V

    invoke-interface {v0, p1, v1, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->loadSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I

    move-result v0

    .line 69
    .local v0, "handle":I
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_f} :catch_22

    .line 70
    :try_start_f
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    monitor-exit v1

    .line 72
    return v0

    .line 71
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_1f

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .end local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .end local p3    # "cookie":I
    :try_start_21
    throw v2
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_22} :catch_22

    .line 73
    .end local v0    # "handle":I
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .restart local p1    # "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .restart local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .restart local p3    # "cookie":I
    :catch_22
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public queryParameter(II)Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;
    .registers 5
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->queryParameter(II)Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 179
    :catch_7
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setModelParameter(III)V
    .registers 6
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I
    .param p3, "value"    # I

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->setModelParameter(III)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_7

    .line 172
    nop

    .line 173
    return-void

    .line 170
    :catch_7
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startRecognition(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V
    .registers 9
    .param p1, "modelHandle"    # I
    .param p2, "config"    # Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    .param p3, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p4, "cookie"    # I

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$1;)V

    invoke-interface {v0, p1, p2, v1, p4}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->startRecognition(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V

    .line 140
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_e} :catch_22

    .line 141
    :try_start_e
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    monitor-exit v0

    .line 145
    nop

    .line 146
    return-void

    .line 142
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_1f

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .end local p1    # "modelHandle":I
    .end local p2    # "config":Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    .end local p3    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .end local p4    # "cookie":I
    :try_start_21
    throw v1
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_22} :catch_22

    .line 143
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "config":Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    .restart local p3    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .restart local p4    # "cookie":I
    :catch_22
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopAllRecognitions()V
    .registers 5

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->stopAllRecognitions()V

    .line 124
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_2e

    .line 125
    :try_start_8
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 126
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    goto :goto_12

    .line 128
    :cond_28
    monitor-exit v0

    .line 131
    nop

    .line 132
    return-void

    .line 128
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2b

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    :try_start_2d
    throw v1
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2e} :catch_2e

    .line 129
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    :catch_2e
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopRecognition(I)V
    .registers 6
    .param p1, "modelHandle"    # I

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->stopRecognition(I)V

    .line 110
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_8
    .catch Lcom/android/server/soundtrigger_middleware/HalException; {:try_start_0 .. :try_end_8} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_1b

    .line 111
    :try_start_8
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    monitor-exit v0

    goto :goto_29

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .end local p1    # "modelHandle":I
    :try_start_1a
    throw v1
    :try_end_1b
    .catch Lcom/android/server/soundtrigger_middleware/HalException; {:try_start_1a .. :try_end_1b} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1b} :catch_1b

    .line 115
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .restart local p1    # "modelHandle":I
    :catch_1b
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 113
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_21
    move-exception v0

    .line 114
    .local v0, "e":Lcom/android/server/soundtrigger_middleware/HalException;
    const-string v1, "SoundTriggerHw2Enforcer"

    const-string v2, "Exception caught while stopping recognition"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .end local v0    # "e":Lcom/android/server/soundtrigger_middleware/HalException;
    :goto_29
    nop

    .line 118
    return-void
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 191
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method

.method public unloadSoundModel(I)V
    .registers 5
    .param p1, "modelHandle"    # I

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->unloadSoundModel(I)V

    .line 98
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_17

    .line 99
    :try_start_8
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit v0

    .line 103
    nop

    .line 104
    return-void

    .line 100
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .end local p1    # "modelHandle":I
    :try_start_16
    throw v1
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_17} :catch_17

    .line 101
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .restart local p1    # "modelHandle":I
    :catch_17
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
