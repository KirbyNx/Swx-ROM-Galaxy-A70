.class Lcom/android/server/ipm/PkgPredictorService$14;
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

    .line 976
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$14;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 979
    const/4 v0, 0x0

    .line 980
    .local v0, "mAppLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/AppRanking;>;"
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$14;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mAufPredictor:Lcom/android/server/ipm/AufPredictor;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$1900(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/AufPredictor;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/server/ipm/AufPredictor;->AppPredict(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$14;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$200(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/AufHitCalculation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/ipm/AufHitCalculation;->updatePredictApplists(Ljava/util/ArrayList;)V

    .line 982
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$14;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$200(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/AufHitCalculation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ipm/AufHitCalculation;->updateHitCount()V

    .line 986
    return-void
.end method
