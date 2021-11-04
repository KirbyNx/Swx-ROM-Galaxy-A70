.class Lcom/android/server/am/NativeCrashListener$CrashPackage;
.super Ljava/lang/Object;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/NativeCrashListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrashPackage"
.end annotation


# instance fields
.field count:I

.field mTimeStamp:J

.field pkg:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/NativeCrashListener$CrashPackage;->mTimeStamp:J

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/NativeCrashListener$CrashPackage;->count:I

    .line 77
    return-void
.end method


# virtual methods
.method increaseCount()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/android/server/am/NativeCrashListener$CrashPackage;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/NativeCrashListener$CrashPackage;->count:I

    return v0
.end method

.method setCrashPackageData(Ljava/lang/String;)V
    .registers 4
    .param p1, "arg"    # Ljava/lang/String;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/NativeCrashListener$CrashPackage;->mTimeStamp:J

    .line 81
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener$CrashPackage;->pkg:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/NativeCrashListener$CrashPackage;->count:I

    .line 83
    return-void
.end method
