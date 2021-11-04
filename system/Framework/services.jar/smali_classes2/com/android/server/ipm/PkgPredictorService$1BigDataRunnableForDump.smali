.class Lcom/android/server/ipm/PkgPredictorService$1BigDataRunnableForDump;
.super Ljava/lang/Object;
.source "PkgPredictorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ipm/PkgPredictorService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BigDataRunnableForDump"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/PkgPredictorService;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/PkgPredictorService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 889
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$1BigDataRunnableForDump;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 893
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$1BigDataRunnableForDump;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$1800(Lcom/android/server/ipm/PkgPredictorService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/ipm/BigData;->SendBigData(Landroid/content/Context;Z)Z

    move-result v0

    .line 894
    .local v0, "isSuccess":Z
    const-string v1, "PkgPredictorService"

    if-eqz v0, :cond_15

    .line 895
    const-string v2, "Send bigdata successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 897
    :cond_15
    const-string v2, "Failed to send bigdata"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :goto_1a
    invoke-static {}, Lcom/android/server/ipm/NapBigDataService;->savePkgAccuracyMap()V

    .line 901
    return-void
.end method
