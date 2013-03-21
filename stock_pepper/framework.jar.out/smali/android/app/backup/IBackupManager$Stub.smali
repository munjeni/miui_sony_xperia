.class public abstract Landroid/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Landroid/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupManager"

.field static final TRANSACTION_acknowledgeFullBackupOrRestore:I = 0x11

.field static final TRANSACTION_agentConnected:I = 0x3

.field static final TRANSACTION_agentDisconnected:I = 0x4

.field static final TRANSACTION_backupNow:I = 0xc

.field static final TRANSACTION_beginRestoreSession:I = 0x18

.field static final TRANSACTION_clearBackupData:I = 0x2

.field static final TRANSACTION_dataChanged:I = 0x1

.field static final TRANSACTION_fullBackup:I = 0xd

.field static final TRANSACTION_fullBackupWithoutConfirm:I = 0xf

.field static final TRANSACTION_fullRestore:I = 0xe

.field static final TRANSACTION_fullRestoreWithoutConfirm:I = 0x10

.field static final TRANSACTION_getConfigurationIntent:I = 0x16

.field static final TRANSACTION_getCurrentTransport:I = 0x13

.field static final TRANSACTION_getDestinationString:I = 0x17

.field static final TRANSACTION_hasBackupPassword:I = 0xb

.field static final TRANSACTION_isBackupEnabled:I = 0x9

.field static final TRANSACTION_listAllTransports:I = 0x14

.field static final TRANSACTION_opComplete:I = 0x19

.field static final TRANSACTION_registerTransportByName:I = 0x12

.field static final TRANSACTION_restoreAtInstall:I = 0x5

.field static final TRANSACTION_selectBackupTransport:I = 0x15

.field static final TRANSACTION_setAutoRestore:I = 0x7

.field static final TRANSACTION_setBackupEnabled:I = 0x6

.field static final TRANSACTION_setBackupPassword:I = 0xa

.field static final TRANSACTION_setBackupProvisioned:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const-string v1, "android.app.backup.IBackupManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Landroid/app/backup/IBackupManager;

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Landroid/app/backup/IBackupManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    sparse-switch p1, :sswitch_data_0

    .line 356
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 52
    :sswitch_0
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    :sswitch_1
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->dataChanged(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v0, 0x1

    goto :goto_0

    .line 66
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->clearBackupData(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 80
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/IBinder;
    :sswitch_4
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->agentDisconnected(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_5
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstall(Ljava/lang/String;I)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_6
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 109
    .local v1, _arg0:Z
    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabled(Z)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    .end local v1           #_arg0:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 115
    :sswitch_7
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 118
    .restart local v1       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestore(Z)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 117
    .end local v1           #_arg0:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 124
    :sswitch_8
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 127
    .restart local v1       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupProvisioned(Z)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 126
    .end local v1           #_arg0:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 133
    :sswitch_9
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabled()Z

    move-result v10

    .line 135
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v10, :cond_3

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 136
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 141
    .end local v10           #_result:Z
    :sswitch_a
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 147
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v10, :cond_4

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 148
    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    .line 153
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v10           #_result:Z
    :sswitch_b
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/app/backup/IBackupManager$Stub;->hasBackupPassword()Z

    move-result v10

    .line 155
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v10, :cond_5

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 156
    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 161
    .end local v10           #_result:Z
    :sswitch_c
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Landroid/app/backup/IBackupManager$Stub;->backupNow()V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 168
    :sswitch_d
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 171
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 177
    .local v1, _arg0:Landroid/os/ParcelFileDescriptor;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    .line 179
    .local v2, _arg1:Z
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v3, 0x1

    .line 181
    .local v3, _arg2:Z
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v4, 0x1

    .line 183
    .local v4, _arg3:Z
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v5, 0x1

    .line 185
    .local v5, _arg4:Z
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:[Ljava/lang/String;
    move-object v0, p0

    .line 186
    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/IBackupManager$Stub;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZ[Ljava/lang/String;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 174
    .end local v1           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:[Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/ParcelFileDescriptor;
    goto :goto_7

    .line 177
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 179
    .restart local v2       #_arg1:Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 181
    .restart local v3       #_arg2:Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    .line 183
    .restart local v4       #_arg3:Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_b

    .line 192
    .end local v1           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:Z
    :sswitch_e
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 195
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 200
    .restart local v1       #_arg0:Landroid/os/ParcelFileDescriptor;
    :goto_c
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 198
    .end local v1           #_arg0:Landroid/os/ParcelFileDescriptor;
    :cond_b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/ParcelFileDescriptor;
    goto :goto_c

    .line 206
    .end local v1           #_arg0:Landroid/os/ParcelFileDescriptor;
    :sswitch_f
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 209
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 215
    .restart local v1       #_arg0:Landroid/os/ParcelFileDescriptor;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v2, 0x1

    .line 217
    .restart local v2       #_arg1:Z
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v3, 0x1

    .line 219
    .restart local v3       #_arg2:Z
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v4, 0x1

    .line 221
    .restart local v4       #_arg3:Z
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v5, 0x1

    .line 223
    .restart local v5       #_arg4:Z
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 225
    .restart local v6       #_arg5:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 227
    .local v7, _arg6:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 229
    .local v8, _arg7:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v9

    .local v9, _arg8:Landroid/app/backup/IFullBackupRestoreObserver;
    move-object v0, p0

    .line 230
    invoke-virtual/range {v0 .. v9}, Landroid/app/backup/IBackupManager$Stub;->fullBackupWithoutConfirm(Landroid/os/ParcelFileDescriptor;ZZZZ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 212
    .end local v1           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:[Ljava/lang/String;
    .end local v7           #_arg6:Ljava/lang/String;
    .end local v8           #_arg7:Ljava/lang/String;
    .end local v9           #_arg8:Landroid/app/backup/IFullBackupRestoreObserver;
    :cond_c
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/ParcelFileDescriptor;
    goto :goto_d

    .line 215
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .line 217
    .restart local v2       #_arg1:Z
    :cond_e
    const/4 v3, 0x0

    goto :goto_f

    .line 219
    .restart local v3       #_arg2:Z
    :cond_f
    const/4 v4, 0x0

    goto :goto_10

    .line 221
    .restart local v4       #_arg3:Z
    :cond_10
    const/4 v5, 0x0

    goto :goto_11

    .line 236
    .end local v1           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:Z
    :sswitch_10
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 239
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 245
    .restart local v1       #_arg0:Landroid/os/ParcelFileDescriptor;
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v4

    .line 250
    .local v4, _arg3:Landroid/app/backup/IFullBackupRestoreObserver;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/backup/IBackupManager$Stub;->fullRestoreWithoutConfirm(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 242
    .end local v1           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Landroid/app/backup/IFullBackupRestoreObserver;
    :cond_11
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/ParcelFileDescriptor;
    goto :goto_12

    .line 256
    .end local v1           #_arg0:Landroid/os/ParcelFileDescriptor;
    :sswitch_11
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 260
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    .line 262
    .local v2, _arg1:Z
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 264
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v5

    .local v5, _arg4:Landroid/app/backup/IFullBackupRestoreObserver;
    move-object v0, p0

    .line 267
    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 260
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Landroid/app/backup/IFullBackupRestoreObserver;
    :cond_12
    const/4 v2, 0x0

    goto :goto_13

    .line 273
    .end local v1           #_arg0:I
    :sswitch_12
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 278
    .local v2, _arg1:Lcom/android/internal/backup/IBackupTransport;
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->registerTransportByName(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 284
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lcom/android/internal/backup/IBackupTransport;
    :sswitch_13
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransport()Ljava/lang/String;

    move-result-object v10

    .line 286
    .local v10, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 292
    .end local v10           #_result:Ljava/lang/String;
    :sswitch_14
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransports()[Ljava/lang/String;

    move-result-object v10

    .line 294
    .local v10, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 300
    .end local v10           #_result:[Ljava/lang/String;
    :sswitch_15
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 303
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 304
    .local v10, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 310
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v10           #_result:Ljava/lang/String;
    :sswitch_16
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 313
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 314
    .local v10, _result:Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    if-eqz v10, :cond_13

    .line 316
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 322
    :goto_14
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 320
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 326
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v10           #_result:Landroid/content/Intent;
    :sswitch_17
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 329
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 330
    .local v10, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 336
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v10           #_result:Ljava/lang/String;
    :sswitch_18
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 340
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v10

    .line 342
    .local v10, _result:Landroid/app/backup/IRestoreSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    if-eqz v10, :cond_14

    invoke-interface {v10}, Landroid/app/backup/IRestoreSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 344
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 343
    :cond_14
    const/4 v0, 0x0

    goto :goto_15

    .line 348
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v10           #_result:Landroid/app/backup/IRestoreSession;
    :sswitch_19
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->opComplete(I)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
