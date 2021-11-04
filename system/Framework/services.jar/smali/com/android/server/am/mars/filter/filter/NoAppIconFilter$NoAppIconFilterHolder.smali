.class Lcom/android/server/am/mars/filter/filter/NoAppIconFilter$NoAppIconFilterHolder;
.super Ljava/lang/Object;
.source "NoAppIconFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoAppIconFilterHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;-><init>(Lcom/android/server/am/mars/filter/filter/NoAppIconFilter$1;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter$NoAppIconFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;
    .registers 1

    .line 23
    sget-object v0, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter$NoAppIconFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;

    return-object v0
.end method
