.class public Lcom/samsung/android/mcf/McfContext;
.super Ljava/lang/Object;
.source "McfContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/McfContext$EventListener;
    }
.end annotation


# static fields
.field public static final EVENT_CONNECTED_SERVICE:I = 0x1

.field public static final EVENT_DISCONNECTED_SERVICE:I = 0x2

.field public static final EVENT_REMOTE_EXCEPTION:I = 0x3

.field public static final MSG_SERVICE_CONNECTED:I = 0x1

.field public static final MSG_SERVICE_CONNECTED_TO:I = 0x4

.field public static final MSG_SERVICE_DISCONNECTED:I = 0x2

.field public static final MSG_SERVICE_REMOTE_EXCEPTION:I = 0x3

.field public static final MSG_SERVICE_SHUTDOWN:I = 0x5

.field public static final TAG:Ljava/lang/String; = "McfContext"

.field public static mInstance:Lcom/samsung/android/mcf/McfContext;


# instance fields
.field public final mBleAdapters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/mcf/McfBleAdapterImpl;",
            ">;"
        }
    .end annotation
.end field

.field public final mCasters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/mcf/McfCasterImpl;",
            ">;"
        }
    .end annotation
.end field

.field public final mClientStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

.field public mContext:Landroid/content/Context;

.field public final mEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/mcf/McfContext$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public mMcfService:Lcom/samsung/android/mcf/IMcfService;

.field public final mServiceConnection:Landroid/content/ServiceConnection;

.field public final mSubscribers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/mcf/McfSubscriberImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Lcom/samsung/android/mcf/McfContext$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/McfContext$1;-><init>(Lcom/samsung/android/mcf/McfContext;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mClientStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    .line 302
    new-instance v0, Lcom/samsung/android/mcf/McfContext$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mcf/McfContext$2;-><init>(Lcom/samsung/android/mcf/McfContext;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mHandler:Landroid/os/Handler;

    .line 352
    new-instance v0, Lcom/samsung/android/mcf/McfContext$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/McfContext$3;-><init>(Lcom/samsung/android/mcf/McfContext;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 369
    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext;->mContext:Landroid/content/Context;

    .line 370
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    .line 371
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/Set;

    .line 372
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/Set;

    .line 373
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/Set;

    .line 374
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/Set;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/mcf/McfContext;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/mcf/McfContext;->shutDown()V

    return-void
.end method

.method private getBleAdapterFromSet(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapterImpl;
    .registers 6

    .line 270
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/McfBleAdapterImpl;

    .line 271
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->isMine(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCasterFromSet(ILcom/samsung/android/mcf/CasterCallback;)Lcom/samsung/android/mcf/McfCasterImpl;
    .registers 6

    .line 279
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/McfCasterImpl;

    .line 280
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/mcf/McfCasterImpl;->isMine(ILcom/samsung/android/mcf/CasterCallback;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/mcf/McfContext;
    .registers 2

    .line 35
    sget-object v0, Lcom/samsung/android/mcf/McfContext;->mInstance:Lcom/samsung/android/mcf/McfContext;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lcom/samsung/android/mcf/McfContext;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/McfContext;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/mcf/McfContext;->mInstance:Lcom/samsung/android/mcf/McfContext;

    .line 38
    :cond_b
    sget-object p0, Lcom/samsung/android/mcf/McfContext;->mInstance:Lcom/samsung/android/mcf/McfContext;

    return-object p0
.end method

.method private getSubscriberFromSet(ILcom/samsung/android/mcf/SubscribeCallback;)Lcom/samsung/android/mcf/McfSubscriberImpl;
    .registers 6

    .line 288
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/McfSubscriberImpl;

    .line 289
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/mcf/McfSubscriberImpl;->isMine(ILcom/samsung/android/mcf/SubscribeCallback;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method private shutDown()V
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/McfCasterImpl;

    .line 254
    invoke-virtual {v1}, Lcom/samsung/android/mcf/McfCasterImpl;->closeInternal()V

    goto :goto_6

    .line 256
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/McfSubscriberImpl;

    .line 259
    invoke-virtual {v1}, Lcom/samsung/android/mcf/McfSubscriberImpl;->closeInternal()V

    goto :goto_21

    .line 261
    :cond_31
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/McfBleAdapterImpl;

    .line 264
    invoke-virtual {v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->closeInternal()V

    goto :goto_3c

    .line 266
    :cond_4c
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method public bindService(Lcom/samsung/android/mcf/McfContext$EventListener;)Z
    .registers 10

    const/4 v0, 0x0

    const-string v1, "bindService "

    const-string v2, "McfContext"

    if-nez p1, :cond_d

    .line 156
    const-string p1, " listener is empty"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 160
    :cond_d
    iget-object v3, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    const/4 v4, 0x1

    if-eqz v3, :cond_27

    .line 161
    const-string v0, " already has binder"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return v4

    .line 167
    :cond_27
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.mcfserver.MCF"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.mcfserver"

    const-string v7, "com.samsung.android.mcfserver.McfService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 170
    iget-object v5, p0, Lcom/samsung/android/mcf/McfContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Caller"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v5, p0, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v5, p0, Lcom/samsung/android/mcf/McfContext;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/mcf/McfContext;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v3, v6, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 174
    const-string p1, "-"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 178
    :cond_5a
    iget-object v3, p0, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 179
    const-string p1, " failed"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public closeBleAdapter(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/McfBleAdapterImpl;

    .line 70
    invoke-virtual {v2, p1}, Lcom/samsung/android/mcf/AbstractClient;->isMyId(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 71
    invoke-virtual {v2}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->closeInternal()V

    .line 72
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {v2}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "McfContext"

    const-string v4, "closeBleAdapter "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 77
    :cond_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/McfBleAdapterImpl;

    .line 78
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_46
    return-void
.end method

.method public closeCaster(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/McfCasterImpl;

    .line 107
    invoke-virtual {v2, p1}, Lcom/samsung/android/mcf/AbstractClient;->isMyId(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 108
    invoke-virtual {v2}, Lcom/samsung/android/mcf/McfCasterImpl;->closeInternal()V

    .line 109
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v2}, Lcom/samsung/android/mcf/McfCasterImpl;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "McfContext"

    const-string v4, "closeCaster "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 114
    :cond_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/McfCasterImpl;

    .line 115
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_46
    return-void
.end method

.method public closeSubscriber(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/McfSubscriberImpl;

    .line 142
    invoke-virtual {v2, p1}, Lcom/samsung/android/mcf/AbstractClient;->isMyId(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 143
    invoke-virtual {v2}, Lcom/samsung/android/mcf/McfSubscriberImpl;->closeInternal()V

    .line 144
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v2}, Lcom/samsung/android/mcf/McfSubscriberImpl;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "McfContext"

    const-string v4, "closeSubscriber "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 149
    :cond_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/McfSubscriberImpl;

    .line 150
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_46
    return-void
.end method

.method public getBleAdapter(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapter;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    const/4 v1, 0x0

    const-string v2, "getBleAdapter "

    const-string v3, "McfContext"

    if-nez v0, :cond_f

    .line 47
    const-string p1, "Invalid service!"

    invoke-static {v3, v2, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 51
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/McfContext;->getBleAdapterFromSet(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapterImpl;

    move-result-object v0

    const-string v4, "return instance created "

    if-eqz v0, :cond_2e

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 57
    :cond_2e
    new-instance v0, Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object v6, p0, Lcom/samsung/android/mcf/McfContext;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    iget-object v10, p0, Lcom/samsung/android/mcf/McfContext;->mClientStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    move-object v5, v0

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/mcf/McfBleAdapterImpl;-><init>(Landroid/content/Context;ILcom/samsung/android/mcf/ble/BleAdapterCallback;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V

    .line 58
    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->open()I

    move-result p1

    if-eqz p1, :cond_59

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 63
    :cond_59
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getCaster(ILcom/samsung/android/mcf/CasterCallback;)Lcom/samsung/android/mcf/McfCaster;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    const/4 v1, 0x0

    const-string v2, "getCaster "

    const-string v3, "McfContext"

    if-nez v0, :cond_f

    .line 85
    const-string p1, "Invalid service!"

    invoke-static {v3, v2, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 89
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/McfContext;->getCasterFromSet(ILcom/samsung/android/mcf/CasterCallback;)Lcom/samsung/android/mcf/McfCasterImpl;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return instance created "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 95
    :cond_2a
    new-instance v0, Lcom/samsung/android/mcf/McfCasterImpl;

    iget-object v5, p0, Lcom/samsung/android/mcf/McfContext;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    iget-object v9, p0, Lcom/samsung/android/mcf/McfContext;->mClientStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    move-object v4, v0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/mcf/McfCasterImpl;-><init>(Landroid/content/Context;ILcom/samsung/android/mcf/CasterCallback;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V

    .line 96
    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfCasterImpl;->open()I

    move-result p1

    if-eqz p1, :cond_3f

    return-object v1

    .line 100
    :cond_3f
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMcfService()Lcom/samsung/android/mcf/IMcfService;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    return-object v0
.end method

.method public getSubscriber(ILcom/samsung/android/mcf/SubscribeCallback;)Lcom/samsung/android/mcf/McfSubscriber;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    const/4 v1, 0x0

    const-string v2, "getSubscriber "

    const-string v3, "McfContext"

    if-nez v0, :cond_f

    .line 121
    const-string p1, "Invalid service!"

    invoke-static {v3, v2, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 125
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/McfContext;->getSubscriberFromSet(ILcom/samsung/android/mcf/SubscribeCallback;)Lcom/samsung/android/mcf/McfSubscriberImpl;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return instance created "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 131
    :cond_2a
    new-instance v0, Lcom/samsung/android/mcf/McfSubscriberImpl;

    iget-object v5, p0, Lcom/samsung/android/mcf/McfContext;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    iget-object v9, p0, Lcom/samsung/android/mcf/McfContext;->mClientStatusListener:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    move-object v4, v0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/mcf/McfSubscriberImpl;-><init>(Landroid/content/Context;ILcom/samsung/android/mcf/SubscribeCallback;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V

    .line 132
    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfSubscriberImpl;->open()I

    move-result p1

    if-eqz p1, :cond_3f

    return-object v1

    .line 135
    :cond_3f
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public releaseInstance()V
    .registers 4

    .line 210
    const-string v0, "McfContext"

    const-string v1, "releaseInstance"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    .line 212
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 213
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/McfCasterImpl;

    .line 214
    invoke-virtual {v2}, Lcom/samsung/android/mcf/AbstractClient;->invalidateService()V

    goto :goto_17

    .line 216
    :cond_27
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mCasters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 217
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/McfSubscriberImpl;

    .line 218
    invoke-virtual {v2}, Lcom/samsung/android/mcf/AbstractClient;->invalidateService()V

    goto :goto_32

    .line 220
    :cond_42
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mSubscribers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 221
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/McfBleAdapterImpl;

    .line 222
    invoke-virtual {v2}, Lcom/samsung/android/mcf/AbstractClient;->invalidateService()V

    goto :goto_4d

    .line 224
    :cond_5d
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mBleAdapters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 225
    sput-object v0, Lcom/samsung/android/mcf/McfContext;->mInstance:Lcom/samsung/android/mcf/McfContext;

    return-void
.end method

.method public unbind()V
    .registers 4

    .line 197
    const-string v0, "McfContext"

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/mcf/McfContext;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v1, "unbind"

    const-string v2, "-"

    .line 198
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    goto :goto_1b

    .line 200
    :catch_11
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unbind "

    invoke-static {v0, v2, v1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    return-void
.end method

.method public unbindService(Lcom/samsung/android/mcf/McfContext$EventListener;)V
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 186
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_17

    .line 187
    const-string p1, "McfContext"

    const-string v0, "unbindService "

    const-string v1, "not empty"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 191
    :cond_17
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfContext;->unbind()V

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfContext;->releaseInstance()V

    return-void
.end method
