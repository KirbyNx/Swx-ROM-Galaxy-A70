.class public Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;
.super Ljava/lang/Object;
.source "DisableForceStopFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter$DisableForceStopFilterHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter$1;

    .line 9
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;
    .registers 1

    .line 17
    # getter for: Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter$DisableForceStopFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter$DisableForceStopFilterHolder;->access$100()Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    .line 28
    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "policyNum"    # I

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    return-void
.end method
