.class Lcom/android/server/am/MARsPolicyManager$Lock;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Lock"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/MARsPolicyManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/MARsPolicyManager$1;

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager$Lock;-><init>()V

    return-void
.end method
