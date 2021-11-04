.class public Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;
.super Ljava/lang/Object;
.source "SystemRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/SystemRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningAppProcessInfo"
.end annotation


# instance fields
.field public avgPss:J

.field public flags:I

.field public importance:I

.field public initialIdlePss:J

.field public isFocused:Z

.field public isProtectedInPicked:Z

.field public lastActivityTime:J

.field public lastPss:J

.field public lru:I

.field public maxPss:J

.field public minPss:J

.field public pid:I

.field public pkgList:[Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public processState:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
