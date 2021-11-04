.class Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;
.super Ljava/lang/Object;
.source "DefaultAppFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultAppFilterHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;-><init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;
    .registers 1

    .line 42
    sget-object v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    return-object v0
.end method
