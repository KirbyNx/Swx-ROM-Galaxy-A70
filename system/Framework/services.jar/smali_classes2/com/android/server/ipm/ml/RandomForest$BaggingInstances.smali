.class Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;
.super Ljava/lang/Object;
.source "RandomForest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/ml/RandomForest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaggingInstances"
.end annotation


# instance fields
.field features:[[D

.field index:[I

.field labels:[D

.field final synthetic this$0:Lcom/android/server/ipm/ml/RandomForest;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/ml/RandomForest;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/ml/RandomForest;

    .line 26
    iput-object p1, p0, Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;->this$0:Lcom/android/server/ipm/ml/RandomForest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
