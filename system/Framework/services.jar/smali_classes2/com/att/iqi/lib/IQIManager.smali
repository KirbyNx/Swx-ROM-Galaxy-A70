.class public Lcom/att/iqi/lib/IQIManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;,
        Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;,
        Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;,
        Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;
    }
.end annotation


# static fields
.field private static j:Lcom/att/iqi/lib/IQIManager;

.field private static final k:Ljava/lang/Object;


# instance fields
.field private a:Lcom/att/iqi/IIQIBroker;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/att/iqi/IMetricQueryCallback;

.field private final g:Lcom/att/iqi/IMetricSourcingCallback;

.field private final h:Lcom/att/iqi/IProfileChangedCallback;

.field private final i:Lcom/att/iqi/IServiceStateChangeCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/IQIManager;->k:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->b:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->c:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->d:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->e:Ljava/util/List;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$1;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$1;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->f:Lcom/att/iqi/IMetricQueryCallback;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$2;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$2;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->g:Lcom/att/iqi/IMetricSourcingCallback;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$3;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$3;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->h:Lcom/att/iqi/IProfileChangedCallback;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$4;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$4;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->i:Lcom/att/iqi/IServiceStateChangeCallback;

    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    return-void
.end method

.method static synthetic a(Lcom/att/iqi/lib/IQIManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->b:Landroid/util/SparseArray;

    return-object p0
.end method

.method private a()V
    .registers 6

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "android.os.ServiceManager"

    :try_start_7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_b} :catch_34

    const-string v1, "getService"

    const/4 v2, 0x1

    :try_start_e
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_19} :catch_32

    const/4 v1, 0x0

    :try_start_1a
    const-string/jumbo v2, "iqi"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_31

    invoke-static {v0}, Lcom/att/iqi/IIQIBroker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIBroker;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;
    :try_end_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_2f} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1a .. :try_end_2f} :catch_30

    goto :goto_31

    :catch_30
    move-exception v0

    :cond_31
    :goto_31
    return-void

    :catch_32
    move-exception v0

    return-void

    :catch_34
    move-exception v0

    return-void
.end method

.method static synthetic b(Lcom/att/iqi/lib/IQIManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->d:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic c(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->e:Ljava/util/List;

    return-object p0
.end method

.method public static getInstance()Lcom/att/iqi/lib/IQIManager;
    .registers 2

    sget-object v0, Lcom/att/iqi/lib/IQIManager;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/att/iqi/lib/IQIManager;->j:Lcom/att/iqi/lib/IQIManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/att/iqi/lib/IQIManager;

    invoke-direct {v1}, Lcom/att/iqi/lib/IQIManager;-><init>()V

    sput-object v1, Lcom/att/iqi/lib/IQIManager;->j:Lcom/att/iqi/lib/IQIManager;

    :cond_e
    sget-object v1, Lcom/att/iqi/lib/IQIManager;->j:Lcom/att/iqi/lib/IQIManager;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public registerMetricSourcingListener(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;)V
    .registers 6

    if-eqz p1, :cond_3e

    if-nez p2, :cond_5

    goto :goto_3e

    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->g:Lcom/att/iqi/IMetricSourcingCallback;

    invoke-interface {v0, p1, v1}, Lcom/att/iqi/IIQIBroker;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->d:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_12} :catch_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_20

    :try_start_12
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v0

    goto :goto_21

    :catchall_1d
    move-exception p2

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p2
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_20} :catch_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_20

    :catch_20
    move-exception p1

    :goto_21
    return-void

    :catch_22
    move-exception p2

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback already registered for metric ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3e
    :goto_3e
    return-void
.end method

.method public registerProfileChangeListener(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_21

    if-eqz v1, :cond_20

    :try_start_14
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->h:Lcom/att/iqi/IProfileChangedCallback;

    invoke-interface {p1, v0}, Lcom/att/iqi/IIQIBroker;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    move-exception p1

    :cond_20
    :goto_20
    return-void

    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public registerQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V
    .registers 6

    if-eqz p1, :cond_3e

    if-nez p2, :cond_5

    goto :goto_3e

    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->f:Lcom/att/iqi/IMetricQueryCallback;

    invoke-interface {v0, p1, v1}, Lcom/att/iqi/IIQIBroker;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->b:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_12} :catch_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_20

    :try_start_12
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v0

    goto :goto_21

    :catchall_1d
    move-exception p2

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p2
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_20} :catch_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_20

    :catch_20
    move-exception p1

    :goto_21
    return-void

    :catch_22
    move-exception p2

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback already registered for metric ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3e
    :goto_3e
    return-void
.end method

.method public registerServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->e:Ljava/util/List;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_21

    if-eqz v1, :cond_20

    :try_start_14
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->i:Lcom/att/iqi/IServiceStateChangeCallback;

    invoke-interface {p1, v0}, Lcom/att/iqi/IIQIBroker;->registerServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    move-exception p1

    :cond_20
    :goto_20
    return-void

    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    invoke-interface {v1, p1}, Lcom/att/iqi/IIQIBroker;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    return p1

    :catch_e
    move-exception p1

    return v0
.end method

.method public submitMetric(Lcom/att/iqi/lib/Metric;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    invoke-interface {v0, p1}, Lcom/att/iqi/IIQIBroker;->submitMetric(Lcom/att/iqi/lib/Metric;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    move-exception p1

    :goto_d
    return-void
.end method

.method public unregisterMetricSourcingListener(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;)V
    .registers 4

    if-eqz p1, :cond_21

    if-nez p2, :cond_5

    goto :goto_21

    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->g:Lcom/att/iqi/IMetricSourcingCallback;

    invoke-interface {p2, p1, v0}, Lcom/att/iqi/IIQIBroker;->unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->d:Landroid/util/SparseArray;

    monitor-enter p2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_20

    :try_start_12
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p2

    goto :goto_21

    :catchall_1d
    move-exception p1

    monitor-exit p2
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_20

    :catch_20
    move-exception p1

    :cond_21
    :goto_21
    return-void
.end method

.method public unregisterProfileChangeListener(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_21

    if-eqz p1, :cond_20

    :try_start_14
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->h:Lcom/att/iqi/IProfileChangedCallback;

    invoke-interface {p1, v0}, Lcom/att/iqi/IIQIBroker;->unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    move-exception p1

    :cond_20
    :goto_20
    return-void

    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public unregisterQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V
    .registers 4

    if-eqz p1, :cond_21

    if-nez p2, :cond_5

    goto :goto_21

    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->f:Lcom/att/iqi/IMetricQueryCallback;

    invoke-interface {p2, p1, v0}, Lcom/att/iqi/IIQIBroker;->unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->b:Landroid/util/SparseArray;

    monitor-enter p2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_20

    :try_start_12
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p2

    goto :goto_21

    :catchall_1d
    move-exception p1

    monitor-exit p2
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_20

    :catch_20
    move-exception p1

    :cond_21
    :goto_21
    return-void
.end method

.method public unregisterServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->e:Ljava/util/List;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_21

    if-eqz p1, :cond_20

    :try_start_14
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->i:Lcom/att/iqi/IServiceStateChangeCallback;

    invoke-interface {p1, v0}, Lcom/att/iqi/IIQIBroker;->unregisterServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    move-exception p1

    :cond_20
    :goto_20
    return-void

    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method
