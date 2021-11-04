.class Lcom/android/server/location/AppOpsHelper$2;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "AppOpsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/AppOpsHelper;->onSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/AppOpsHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/AppOpsHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/AppOpsHelper;

    .line 110
    iput-object p1, p0, Lcom/android/server/location/AppOpsHelper$2;->this$0:Lcom/android/server/location/AppOpsHelper;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method

.method static synthetic lambda$onOpChanged$0(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Ljava/lang/String;

    .line 114
    move-object v0, p0

    check-cast v0, Lcom/android/server/location/AppOpsHelper;

    # invokes: Lcom/android/server/location/AppOpsHelper;->onMockLocationAppOpChanged(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/location/AppOpsHelper;->access$100(Lcom/android/server/location/AppOpsHelper;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/-$$Lambda$AppOpsHelper$2$YufvdHpkmOrd1OiBCgeI1WzaXaI;->INSTANCE:Lcom/android/server/location/-$$Lambda$AppOpsHelper$2$YufvdHpkmOrd1OiBCgeI1WzaXaI;

    iget-object v2, p0, Lcom/android/server/location/AppOpsHelper$2;->this$0:Lcom/android/server/location/AppOpsHelper;

    .line 114
    invoke-static {v1, v2, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    return-void
.end method
