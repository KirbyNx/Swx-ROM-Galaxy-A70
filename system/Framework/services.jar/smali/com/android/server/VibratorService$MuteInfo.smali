.class Lcom/android/server/VibratorService$MuteInfo;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MuteInfo"
.end annotation


# instance fields
.field private mAbortedVibrations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/VibratorService$AbortVibration;",
            ">;"
        }
    .end annotation
.end field

.field private mMagnitudeType:Ljava/lang/String;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "magnitudeType"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 4159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService$MuteInfo;->mAbortedVibrations:Ljava/util/ArrayList;

    .line 4160
    iput-object p1, p0, Lcom/android/server/VibratorService$MuteInfo;->mMagnitudeType:Ljava/lang/String;

    .line 4161
    iput-object p2, p0, Lcom/android/server/VibratorService$MuteInfo;->mToken:Landroid/os/IBinder;

    .line 4162
    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/VibratorService$MuteInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$MuteInfo;

    .line 4154
    iget-object v0, p0, Lcom/android/server/VibratorService$MuteInfo;->mMagnitudeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/VibratorService$MuteInfo;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$MuteInfo;

    .line 4154
    invoke-direct {p0}, Lcom/android/server/VibratorService$MuteInfo;->getAbortedVibration()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/VibratorService$MuteInfo;Lcom/android/server/VibratorService$AbortVibration;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$MuteInfo;
    .param p1, "x1"    # Lcom/android/server/VibratorService$AbortVibration;

    .line 4154
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService$MuteInfo;->addAbortedVibration(Lcom/android/server/VibratorService$AbortVibration;)V

    return-void
.end method

.method private addAbortedVibration(Lcom/android/server/VibratorService$AbortVibration;)V
    .registers 3
    .param p1, "av"    # Lcom/android/server/VibratorService$AbortVibration;

    .line 4165
    iget-object v0, p0, Lcom/android/server/VibratorService$MuteInfo;->mAbortedVibrations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4166
    return-void
.end method

.method private getAbortedVibration()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/VibratorService$AbortVibration;",
            ">;"
        }
    .end annotation

    .line 4169
    iget-object v0, p0, Lcom/android/server/VibratorService$MuteInfo;->mAbortedVibrations:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 9

    .line 4174
    # getter for: Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/server/VibratorService;->access$7100()Ljava/util/Hashtable;

    move-result-object v0

    monitor-enter v0

    .line 4175
    :try_start_5
    const-string v1, "VibratorService"

    const-string v2, "binderDied() - MuteInfo"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4177
    # getter for: Lcom/android/server/VibratorService$MuteNotificationInfo;->sMuteOn:Z
    invoke-static {}, Lcom/android/server/VibratorService$MuteNotificationInfo;->access$5700()Z

    move-result v1

    if-nez v1, :cond_18

    # getter for: Lcom/android/server/VibratorService$MuteCallInfo;->sMuteOn:Z
    invoke-static {}, Lcom/android/server/VibratorService$MuteCallInfo;->access$5800()Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 4178
    :cond_18
    const/4 v1, 0x0

    .line 4179
    .local v1, "hasNotification":Z
    const/4 v2, 0x0

    .line 4180
    .local v2, "hasCall":Z
    # getter for: Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/server/VibratorService;->access$7100()Ljava/util/Hashtable;

    move-result-object v3

    sget-object v4, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/VibratorService$MuteInfo;->mToken:Landroid/os/IBinder;

    # invokes: Lcom/android/server/VibratorService;->getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/VibratorService;->access$7200(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3e

    .line 4181
    sget-object v3, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    iget-object v6, p0, Lcom/android/server/VibratorService$MuteInfo;->mToken:Landroid/os/IBinder;

    # invokes: Lcom/android/server/VibratorService;->addToMuteLogInfos(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/VibratorService;->access$7300(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V

    .line 4183
    :cond_3e
    # getter for: Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/server/VibratorService;->access$7100()Ljava/util/Hashtable;

    move-result-object v3

    sget-object v5, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v5}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/VibratorService$MuteInfo;->mToken:Landroid/os/IBinder;

    # invokes: Lcom/android/server/VibratorService;->getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/server/VibratorService;->access$7200(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 4184
    sget-object v3, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    iget-object v6, p0, Lcom/android/server/VibratorService$MuteInfo;->mToken:Landroid/os/IBinder;

    # invokes: Lcom/android/server/VibratorService;->addToMuteLogInfos(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/VibratorService;->access$7300(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V

    .line 4186
    :cond_61
    # getter for: Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/server/VibratorService;->access$7100()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 4187
    .local v3, "enumerationKey":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_69
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 4188
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4189
    .local v5, "key":Ljava/lang/String;
    # getter for: Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/server/VibratorService;->access$7100()Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/VibratorService$MuteInfo;

    iget-object v6, v6, Lcom/android/server/VibratorService$MuteInfo;->mMagnitudeType:Ljava/lang/String;

    .line 4190
    .local v6, "mag":Ljava/lang/String;
    sget-object v7, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v7}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 4191
    const/4 v1, 0x1

    goto :goto_9c

    .line 4192
    :cond_8f
    sget-object v7, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v7}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 4193
    const/4 v2, 0x1

    .line 4195
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "mag":Ljava/lang/String;
    :cond_9c
    :goto_9c
    goto :goto_69

    .line 4197
    :cond_9d
    if-nez v1, :cond_a2

    .line 4198
    # setter for: Lcom/android/server/VibratorService$MuteNotificationInfo;->sMuteOn:Z
    invoke-static {v4}, Lcom/android/server/VibratorService$MuteNotificationInfo;->access$5702(Z)Z

    .line 4200
    :cond_a2
    if-nez v2, :cond_a7

    .line 4201
    # setter for: Lcom/android/server/VibratorService$MuteCallInfo;->sMuteOn:Z
    invoke-static {v4}, Lcom/android/server/VibratorService$MuteCallInfo;->access$5802(Z)Z

    .line 4204
    .end local v1    # "hasNotification":Z
    .end local v2    # "hasCall":Z
    .end local v3    # "enumerationKey":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_a7
    monitor-exit v0

    .line 4205
    return-void

    .line 4204
    :catchall_a9
    move-exception v1

    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_5 .. :try_end_ab} :catchall_a9

    throw v1
.end method
