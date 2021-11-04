.class Lcom/android/server/ipm/NapClassifier$Data;
.super Ljava/lang/Object;
.source "NapClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/NapClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Data"
.end annotation


# instance fields
.field featureNum:I

.field features:[[D

.field itemNum:I

.field labels:[D

.field final synthetic this$0:Lcom/android/server/ipm/NapClassifier;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/NapClassifier;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/NapClassifier;

    .line 344
    iput-object p1, p0, Lcom/android/server/ipm/NapClassifier$Data;->this$0:Lcom/android/server/ipm/NapClassifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    return-void
.end method
