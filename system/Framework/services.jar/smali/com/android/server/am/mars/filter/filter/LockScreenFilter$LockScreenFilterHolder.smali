.class Lcom/android/server/am/mars/filter/filter/LockScreenFilter$LockScreenFilterHolder;
.super Ljava/lang/Object;
.source "LockScreenFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/filter/filter/LockScreenFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockScreenFilterHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/am/mars/filter/filter/LockScreenFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;-><init>(Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$LockScreenFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/am/mars/filter/filter/LockScreenFilter;
    .registers 1

    .line 26
    sget-object v0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$LockScreenFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    return-object v0
.end method
