.class public interface abstract Lcom/android/server/protolog/common/IProtoLogGroup;
.super Ljava/lang/Object;
.source "IProtoLogGroup.java"


# virtual methods
.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract isEnabled()Z
.end method

.method public isLogToAny()Z
    .registers 2

    .line 42
    invoke-interface {p0}, Lcom/android/server/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p0}, Lcom/android/server/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public abstract isLogToLogcat()Z
.end method

.method public abstract isLogToProto()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract setLogToLogcat(Z)V
.end method

.method public abstract setLogToProto(Z)V
.end method
