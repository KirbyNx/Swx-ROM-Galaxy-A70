.class public Lcom/android/server/locksettings/SyntheticPasswordMdfpp$SecureMode;
.super Ljava/lang/Object;
.source "SyntheticPasswordMdfpp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordMdfpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecureMode"
.end annotation


# static fields
.field public static final LATEST:I = 0x2

.field public static final MDFPP_V1:I = 0x1

.field public static final MDFPP_V2:I = 0x2

.field public static final NONE:I = -0x1

.field public static final ORIGINAL:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
