.class Lcom/android/server/ipm/ml/DecisionTree$Node;
.super Ljava/lang/Object;
.source "DecisionTree.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/ml/DecisionTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Node"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6a7877b5c46e2fc9L


# instance fields
.field availableAttr:[I

.field childrenNodes:[Lcom/android/server/ipm/ml/DecisionTree$Node;

.field instanceSet:[I

.field label:D

.field splitAttr:I

.field splitPoints:[D

.field final synthetic this$0:Lcom/android/server/ipm/ml/DecisionTree;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/ml/DecisionTree;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/ml/DecisionTree;

    .line 31
    iput-object p1, p0, Lcom/android/server/ipm/ml/DecisionTree$Node;->this$0:Lcom/android/server/ipm/ml/DecisionTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
