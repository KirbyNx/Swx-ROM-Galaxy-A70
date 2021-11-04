.class public abstract Lcom/android/server/location/gnss/GnssStatusListenerHelper;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GnssStatusListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper<",
        "Ljava/lang/Void;",
        "Landroid/location/IGnssStatusListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssStatusListenerHelper"


# instance fields
.field private final NMEA_LISTENER_ALLOWED:I

.field private final NMEA_LISTENER_NOT_ALLOWED:I

.field private mGpsProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

.field private mNmeaAllowed:I

.field public final mNmeaListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/CallerIdentity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    const-string v0, "GnssStatusListenerHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "gpsProvider"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 51
    const-string v0, "GnssStatusListenerHelper"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mNmeaListenerMap:Ljava/util/Map;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->NMEA_LISTENER_NOT_ALLOWED:I

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->NMEA_LISTENER_ALLOWED:I

    .line 52
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->isSupported()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->setSupported(Z)V

    .line 53
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mGpsProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Ljava/lang/Object;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;Z)V
    .registers 5

    .line 38
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Landroid/location/IGnssStatusListener;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->addListener(Ljava/lang/Void;Landroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;Z)V

    return-void
.end method

.method public addListener(Ljava/lang/Void;Landroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;Z)V
    .registers 9
    .param p1, "request"    # Ljava/lang/Void;
    .param p2, "listener"    # Landroid/location/IGnssStatusListener;
    .param p3, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .param p4, "hasNmeaListener"    # Z

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Ljava/lang/Object;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V

    .line 66
    if-eqz p4, :cond_4c

    .line 67
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mNmeaListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 68
    :try_start_8
    sget-boolean v1, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->DEBUG:Z

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addListener: adding NMEA listener("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_34
    invoke-interface {p2}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 72
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mNmeaListenerMap:Ljava/util/Map;

    invoke-interface {v2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget v2, p0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mNmeaAllowed:I

    if-nez v2, :cond_47

    .line 74
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mNmeaAllowed:I

    .line 75
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->informListenerStatus(I)V

    .line 77
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_47
    monitor-exit v0

    goto :goto_4c

    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_49

    throw v1

    .line 79
    :cond_4c
    :goto_4c
    return-void
.end method

.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .registers 3
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "Landroid/location/IGnssStatusListener;",
            ">;"
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method protected informListenerStatus(I)V
    .registers 3
    .param p1, "allowNmea"    # I

    .line 58
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mGpsProvider:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->onGnssStatusListenerStatusChanged(I)V

    .line 59
    return-void
.end method

.method public synthetic lambda$onFirstFix$2$GnssStatusListenerHelper(ILandroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V
    .registers 5
    .param p1, "timeToFirstFix"    # I
    .param p2, "listener"    # Landroid/location/IGnssStatusListener;
    .param p3, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    :try_start_0
    invoke-interface {p2, p1}, Landroid/location/IGnssStatusListener;->onFirstFix(I)V
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_3} :catch_4

    .line 138
    goto :goto_8

    .line 136
    :catch_4
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->removeListener(Landroid/location/IGnssStatusListener;)V

    .line 139
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :goto_8
    return-void
.end method

.method public synthetic lambda$onNmeaReceived$4$GnssStatusListenerHelper(JLjava/lang/String;Landroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V
    .registers 9
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/location/IGnssStatusListener;
    .param p5, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p5}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->hasPermission(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 171
    iget-object v0, p5, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    const-string v1, "GnssStatusListenerHelper"

    const-string v2, "NMEA"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->logPermissionDisabledEventNotReported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void

    .line 176
    :cond_12
    :try_start_12
    invoke-interface {p4, p1, p2, p3}, Landroid/location/IGnssStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_15
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_15} :catch_16

    .line 179
    goto :goto_1a

    .line 177
    :catch_16
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-virtual {p0, p4}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->removeListener(Landroid/location/IGnssStatusListener;)V

    .line 180
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :goto_1a
    return-void
.end method

.method public synthetic lambda$onStatusChanged$0$GnssStatusListenerHelper(Landroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V
    .registers 4
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .param p2, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    :try_start_0
    invoke-interface {p1}, Landroid/location/IGnssStatusListener;->onGnssStarted()V
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_3} :catch_4

    .line 117
    goto :goto_8

    .line 115
    :catch_4
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->removeListener(Landroid/location/IGnssStatusListener;)V

    .line 118
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :goto_8
    return-void
.end method

.method public synthetic lambda$onStatusChanged$1$GnssStatusListenerHelper(Landroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V
    .registers 4
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .param p2, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    :try_start_0
    invoke-interface {p1}, Landroid/location/IGnssStatusListener;->onGnssStopped()V
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_3} :catch_4

    .line 126
    goto :goto_8

    .line 124
    :catch_4
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->removeListener(Landroid/location/IGnssStatusListener;)V

    .line 127
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :goto_8
    return-void
.end method

.method public synthetic lambda$onSvStatusChanged$3$GnssStatusListenerHelper(I[I[F[F[F[F[FLandroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V
    .registers 21
    .param p1, "svCount"    # I
    .param p2, "prnWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "carrierFreqs"    # [F
    .param p7, "basebandCn0s"    # [F
    .param p8, "listener"    # Landroid/location/IGnssStatusListener;
    .param p9, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    move-object v1, p0

    move-object/from16 v2, p9

    iget-object v0, v1, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->hasPermission(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 153
    iget-object v0, v2, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    const-string v3, "GnssStatusListenerHelper"

    const-string v4, "GNSS status"

    invoke-virtual {p0, v3, v0, v4}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->logPermissionDisabledEventNotReported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void

    .line 159
    :cond_15
    move-object/from16 v3, p8

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    :try_start_21
    invoke-interface/range {v3 .. v10}, Landroid/location/IGnssStatusListener;->onSvStatusChanged(I[I[F[F[F[F[F)V
    :try_end_24
    .catch Landroid/os/DeadObjectException; {:try_start_21 .. :try_end_24} :catch_27

    .line 163
    move-object/from16 v3, p8

    goto :goto_2f

    .line 161
    :catch_27
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 162
    .local v0, "e":Landroid/os/DeadObjectException;
    move-object/from16 v3, p8

    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->removeListener(Landroid/location/IGnssStatusListener;)V

    .line 165
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :goto_2f
    return-void
.end method

.method public onFirstFix(I)V
    .registers 3
    .param p1, "timeToFirstFix"    # I

    .line 132
    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$BUn_tJP5Gf1h3NojIqoIGrciWGM;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$BUn_tJP5Gf1h3NojIqoIGrciWGM;-><init>(Lcom/android/server/location/gnss/GnssStatusListenerHelper;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 141
    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .registers 5
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$R8Iu1GHQIbdGdQkOj_FPKJgKV4Q;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$R8Iu1GHQIbdGdQkOj_FPKJgKV4Q;-><init>(Lcom/android/server/location/gnss/GnssStatusListenerHelper;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 181
    return-void
.end method

.method public onStatusChanged(Z)V
    .registers 3
    .param p1, "isNavigating"    # Z

    .line 110
    if-eqz p1, :cond_b

    .line 111
    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$I8Ue0Zfl1gaUj7ChQM8UB8Eii9Q;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$I8Ue0Zfl1gaUj7ChQM8UB8Eii9Q;-><init>(Lcom/android/server/location/gnss/GnssStatusListenerHelper;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    goto :goto_13

    .line 120
    :cond_b
    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$AsdnC_7q1TRO6ne9RdLGKQXGXFQ;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$AsdnC_7q1TRO6ne9RdLGKQXGXFQ;-><init>(Lcom/android/server/location/gnss/GnssStatusListenerHelper;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 129
    :goto_13
    return-void
.end method

.method public onSvStatusChanged(I[I[F[F[F[F[F)V
    .registers 18
    .param p1, "svCount"    # I
    .param p2, "prnWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "carrierFreqs"    # [F
    .param p7, "basebandCn0s"    # [F

    .line 151
    new-instance v9, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;-><init>(Lcom/android/server/location/gnss/GnssStatusListenerHelper;I[I[F[F[F[F[F)V

    move-object v0, p0

    invoke-virtual {p0, v9}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 166
    return-void
.end method

.method protected registerWithService()I
    .registers 2

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public removeListener(Landroid/location/IGnssStatusListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;

    .line 83
    invoke-super {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    .line 84
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mNmeaListenerMap:Ljava/util/Map;

    invoke-interface {p1}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mNmeaListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 86
    sget-boolean v0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->DEBUG:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeListener: removing GnssStatus listener("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_3c
    iget v0, p0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mNmeaAllowed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_47

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mNmeaAllowed:I

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->informListenerStatus(I)V

    .line 93
    :cond_47
    return-void
.end method

.method public bridge synthetic removeListener(Landroid/os/IInterface;)V
    .registers 2

    .line 38
    check-cast p1, Landroid/location/IGnssStatusListener;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->removeListener(Landroid/location/IGnssStatusListener;)V

    return-void
.end method

.method protected unregisterFromService()V
    .registers 1

    .line 102
    return-void
.end method
