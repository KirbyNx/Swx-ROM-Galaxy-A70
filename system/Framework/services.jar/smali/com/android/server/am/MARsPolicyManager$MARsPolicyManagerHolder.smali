.class Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MARsPolicyManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 135
    new-instance v0, Lcom/android/server/am/MARsPolicyManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsPolicyManager;-><init>(Lcom/android/server/am/MARsPolicyManager$1;)V

    sput-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/android/server/am/MARsPolicyManager;
    .registers 1

    .line 134
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    return-object v0
.end method
