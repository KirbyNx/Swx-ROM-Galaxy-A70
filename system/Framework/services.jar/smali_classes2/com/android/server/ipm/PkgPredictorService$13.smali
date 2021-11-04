.class Lcom/android/server/ipm/PkgPredictorService$13;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/PkgPredictorService;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/PkgPredictorService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 861
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$13;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 865
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$13;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-virtual {v0}, Lcom/android/server/ipm/PkgPredictorService;->trainModel()V

    .line 866
    return-void
.end method
