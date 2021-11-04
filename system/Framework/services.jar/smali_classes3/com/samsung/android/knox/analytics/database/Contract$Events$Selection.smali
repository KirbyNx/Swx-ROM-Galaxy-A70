.class public Lcom/samsung/android/knox/analytics/database/Contract$Events$Selection;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/Contract$Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Selection"
.end annotation


# static fields
.field public static final CHUNK_SIZE:Ljava/lang/String; = "chunk_size"

.field public static final DELETE_BY_SIZE:Ljava/lang/String; = "deleteChunkBySize"

.field public static final DELETE_BY_SIZE_ONLY_EVENTS:Ljava/lang/String; = "deleteChunkBySizeOnlyPlainEvents"

.field public static final DELETE_UNTIL_TARGET_DB_SIZE:Ljava/lang/String; = "deleteUntilTargetDbSize"

.field public static final DELETE_UP_TO_ID:Ljava/lang/String; = "deleteUpToId"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
