.class Lcom/android/server/ipm/ml/DecisionTree$SplitInfo;
.super Ljava/lang/Object;
.source "DecisionTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/ml/DecisionTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SplitInfo"
.end annotation


# instance fields
.field entropy:D

.field gainRatio:D

.field setInfo:Lcom/android/server/ipm/ml/DecisionTree$SplitSet;

.field final synthetic this$0:Lcom/android/server/ipm/ml/DecisionTree;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/ml/DecisionTree;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/ml/DecisionTree;

    .line 54
    iput-object p1, p0, Lcom/android/server/ipm/ml/DecisionTree$SplitInfo;->this$0:Lcom/android/server/ipm/ml/DecisionTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
