.class Lcom/android/server/am/mars/filter/filter/SystemFilter$SystemFilterHolder;
.super Ljava/lang/Object;
.source "SystemFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/filter/filter/SystemFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemFilterHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/am/mars/filter/filter/SystemFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/android/server/am/mars/filter/filter/SystemFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/SystemFilter;-><init>(Lcom/android/server/am/mars/filter/filter/SystemFilter$1;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/SystemFilter$SystemFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/SystemFilter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/am/mars/filter/filter/SystemFilter;
    .registers 1

    .line 17
    sget-object v0, Lcom/android/server/am/mars/filter/filter/SystemFilter$SystemFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/SystemFilter;

    return-object v0
.end method
