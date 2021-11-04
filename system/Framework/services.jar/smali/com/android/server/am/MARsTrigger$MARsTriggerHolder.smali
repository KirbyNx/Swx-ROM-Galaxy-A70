.class Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;
.super Ljava/lang/Object;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MARsTriggerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/am/MARsTrigger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 98
    new-instance v0, Lcom/android/server/am/MARsTrigger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsTrigger;-><init>(Lcom/android/server/am/MARsTrigger$1;)V

    sput-object v0, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/am/MARsTrigger;
    .registers 1

    .line 97
    sget-object v0, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    return-object v0
.end method
