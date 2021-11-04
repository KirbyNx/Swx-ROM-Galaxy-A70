.class Lcom/android/server/am/kpm/ComponentCallCounterDefault$LazyHolder;
.super Ljava/lang/Object;
.source "ComponentCallCounterDefault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/kpm/ComponentCallCounterDefault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/android/server/am/kpm/ComponentCallCounterDefault;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lcom/android/server/am/kpm/ComponentCallCounterDefault;

    invoke-direct {v0}, Lcom/android/server/am/kpm/ComponentCallCounterDefault;-><init>()V

    sput-object v0, Lcom/android/server/am/kpm/ComponentCallCounterDefault$LazyHolder;->INSTANCE:Lcom/android/server/am/kpm/ComponentCallCounterDefault;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
