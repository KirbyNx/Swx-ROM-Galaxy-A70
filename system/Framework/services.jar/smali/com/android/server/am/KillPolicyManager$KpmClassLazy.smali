.class Lcom/android/server/am/KillPolicyManager$KpmClassLazy;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KpmClassLazy"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/KillPolicyManager;

.field public static isinitKpmClass:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1278
    new-instance v0, Lcom/android/server/am/KillPolicyManager;

    invoke-direct {v0}, Lcom/android/server/am/KillPolicyManager;-><init>()V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$KpmClassLazy;->INSTANCE:Lcom/android/server/am/KillPolicyManager;

    .line 1279
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/KillPolicyManager$KpmClassLazy;->isinitKpmClass:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
