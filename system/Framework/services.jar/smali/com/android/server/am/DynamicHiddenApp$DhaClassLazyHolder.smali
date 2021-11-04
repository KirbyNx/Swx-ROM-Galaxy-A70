.class Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;
.super Ljava/lang/Object;
.source "DynamicHiddenApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DynamicHiddenApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DhaClassLazyHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

.field public static isinitClass:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 392
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/DynamicHiddenApp;-><init>(Lcom/android/server/am/DynamicHiddenApp$1;)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    .line 393
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->isinitClass:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
