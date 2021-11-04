.class Lcom/android/server/ipm/ml/RandomForest$1;
.super Ljava/lang/Object;
.source "RandomForest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ipm/ml/RandomForest;->_train(I[[D[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/ml/RandomForest;

.field final synthetic val$featureNum:I

.field final synthetic val$features:[[D

.field final synthetic val$finali:I

.field final synthetic val$labels:[D


# direct methods
.method constructor <init>(Lcom/android/server/ipm/ml/RandomForest;[[D[DII)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/ipm/ml/RandomForest;

    .line 158
    iput-object p1, p0, Lcom/android/server/ipm/ml/RandomForest$1;->this$0:Lcom/android/server/ipm/ml/RandomForest;

    iput-object p2, p0, Lcom/android/server/ipm/ml/RandomForest$1;->val$features:[[D

    iput-object p3, p0, Lcom/android/server/ipm/ml/RandomForest$1;->val$labels:[D

    iput p4, p0, Lcom/android/server/ipm/ml/RandomForest$1;->val$finali:I

    iput p5, p0, Lcom/android/server/ipm/ml/RandomForest$1;->val$featureNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ipm/ml/RandomForest$1;->this$0:Lcom/android/server/ipm/ml/RandomForest;

    iget-object v1, p0, Lcom/android/server/ipm/ml/RandomForest$1;->val$features:[[D

    iget-object v2, p0, Lcom/android/server/ipm/ml/RandomForest$1;->val$labels:[D

    # invokes: Lcom/android/server/ipm/ml/RandomForest;->baggingInstances([[D[D)Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;
    invoke-static {v0, v1, v2}, Lcom/android/server/ipm/ml/RandomForest;->access$000(Lcom/android/server/ipm/ml/RandomForest;[[D[D)Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;

    move-result-object v0

    .line 165
    .local v0, "intances":Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;
    iget-object v1, p0, Lcom/android/server/ipm/ml/RandomForest$1;->this$0:Lcom/android/server/ipm/ml/RandomForest;

    # getter for: Lcom/android/server/ipm/ml/RandomForest;->forest:[Lcom/android/server/ipm/ml/DecisionTree;
    invoke-static {v1}, Lcom/android/server/ipm/ml/RandomForest;->access$100(Lcom/android/server/ipm/ml/RandomForest;)[Lcom/android/server/ipm/ml/DecisionTree;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ipm/ml/RandomForest$1;->val$finali:I

    new-instance v3, Lcom/android/server/ipm/ml/DecisionTree;

    invoke-direct {v3}, Lcom/android/server/ipm/ml/DecisionTree;-><init>()V

    aput-object v3, v1, v2

    .line 167
    iget-object v1, p0, Lcom/android/server/ipm/ml/RandomForest$1;->this$0:Lcom/android/server/ipm/ml/RandomForest;

    # getter for: Lcom/android/server/ipm/ml/RandomForest;->forest:[Lcom/android/server/ipm/ml/DecisionTree;
    invoke-static {v1}, Lcom/android/server/ipm/ml/RandomForest;->access$100(Lcom/android/server/ipm/ml/RandomForest;)[Lcom/android/server/ipm/ml/DecisionTree;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ipm/ml/RandomForest$1;->val$finali:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/server/ipm/ml/RandomForest$1;->val$featureNum:I

    iget-object v3, v0, Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;->features:[[D

    iget-object v4, v0, Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;->labels:[D

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ipm/ml/DecisionTree;->train(I[[D[D)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2e

    .line 169
    nop

    .line 172
    .end local v0    # "intances":Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;
    goto :goto_37

    .line 170
    :catch_2e
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RandomForest"

    const-string/jumbo v2, "interrupted exception in thread pool"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_37
    return-void
.end method
