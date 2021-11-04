.class Lcom/android/server/power/PowerManagerLog$LazyHolder;
.super Ljava/lang/Object;
.source "PowerManagerLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/power/PowerManagerLog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 538
    new-instance v0, Lcom/android/server/power/PowerManagerLog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/PowerManagerLog;-><init>(Lcom/android/server/power/PowerManagerLog$1;)V

    sput-object v0, Lcom/android/server/power/PowerManagerLog$LazyHolder;->INSTANCE:Lcom/android/server/power/PowerManagerLog;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/power/PowerManagerLog;
    .registers 1

    .line 537
    sget-object v0, Lcom/android/server/power/PowerManagerLog$LazyHolder;->INSTANCE:Lcom/android/server/power/PowerManagerLog;

    return-object v0
.end method
