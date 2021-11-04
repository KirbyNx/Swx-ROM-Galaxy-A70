.class public Lcom/android/server/am/mars/filter/filter/HomeFilter;
.super Ljava/lang/Object;
.source "HomeFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/HomeFilter$HomeFilterHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentHomePackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/HomeFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/HomeFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/HomeFilter;->mCurrentHomePackage:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/HomeFilter;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/HomeFilter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/mars/filter/filter/HomeFilter$1;

    .line 10
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/HomeFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/HomeFilter;
    .registers 1

    .line 22
    # getter for: Lcom/android/server/am/mars/filter/filter/HomeFilter$HomeFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/HomeFilter;
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/HomeFilter$HomeFilterHolder;->access$100()Lcom/android/server/am/mars/filter/filter/HomeFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    .line 33
    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "policyNum"    # I

    .line 37
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/HomeFilter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne p2, v0, :cond_3c

    .line 38
    if-eqz p1, :cond_3c

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/HomeFilter;->mCurrentHomePackage:Ljava/lang/String;

    if-eqz v0, :cond_3c

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 39
    sget-object v0, Lcom/android/server/am/mars/filter/filter/HomeFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/16 v0, 0xc

    return v0

    .line 43
    :cond_3c
    const/4 v0, 0x0

    return v0
.end method

.method public getHomePackage()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/HomeFilter;->mCurrentHomePackage:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/HomeFilter;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public setHomePackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/HomeFilter;->mCurrentHomePackage:Ljava/lang/String;

    .line 48
    return-void
.end method
