.class abstract Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;
.super Ljava/lang/Object;
.source "CoverServiceManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CoverServiceInfo"
.end annotation


# static fields
.field private static final RETRY_CONNECT_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CoverServiceInfo"


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private final component:Landroid/content/ComponentName;

.field private final connection:Landroid/content/ServiceConnection;

.field private disconnectionCount:I

.field protected final service:Landroid/os/IInterface;

.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

.field private final type:I

.field private user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    .registers 8
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "connection"    # Landroid/content/ServiceConnection;
    .param p6, "user"    # Landroid/os/UserHandle;

    .line 838
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    sget-boolean p1, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz p1, :cond_27

    .line 840
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CoverServiceInfo : component = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", type = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoverServiceInfo"

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_27
    iput-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    .line 843
    iput p3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    .line 844
    iput-object p4, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->binder:Landroid/os/IBinder;

    .line 845
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    .line 846
    iput-object p5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 847
    iput-object p6, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->user:Landroid/os/UserHandle;

    .line 848
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->disconnectionCount:I

    .line 856
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 823
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 823
    iget v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 823
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->connection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/os/UserHandle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 823
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->user:Landroid/os/UserHandle;

    return-object v0
.end method


# virtual methods
.method abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public binderDied()V
    .registers 3

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverServiceInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    # invokes: Lcom/android/server/sepunion/cover/CoverServiceManager;->removeCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V
    invoke-static {v0, p0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$900(Lcom/android/server/sepunion/cover/CoverServiceManager;Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    .line 862
    return-void
.end method

.method disconnect()Z
    .registers 4

    .line 870
    iget v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->disconnectionCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->disconnectionCount:I

    .line 871
    const/4 v2, 0x5

    if-ge v0, v2, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method abstract onCoverAppStateChanged(Z)I
.end method

.method abstract systemReady()V
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 866
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->user:Landroid/os/UserHandle;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "CoverServiceInfo[component=%s, type=%s, service=%s, user=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .registers 3

    .line 875
    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_1f

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unbind : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverServiceInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_1f
    return-void
.end method

.method abstract updateCoverState(Lcom/samsung/android/cover/CoverState;)V
.end method
