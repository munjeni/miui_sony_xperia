.class Landroid/inputmethodservice/IInputMethodSessionWrapper;
.super Lcom/android/internal/view/IInputMethodSession$Stub;
.source "IInputMethodSessionWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DO_APP_PRIVATE_COMMAND:I = 0x64

.field private static final DO_DISPATCH_KEY_EVENT:I = 0x46

.field private static final DO_DISPATCH_TRACKBALL_EVENT:I = 0x50

.field private static final DO_DISPLAY_COMPLETIONS:I = 0x41

.field private static final DO_FINISH_INPUT:I = 0x3c

.field private static final DO_FINISH_SESSION:I = 0x6e

.field private static final DO_TOGGLE_SOFT_INPUT:I = 0x69

.field private static final DO_UPDATE_CURSOR:I = 0x5f

.field private static final DO_UPDATE_EXTRACTED_TEXT:I = 0x43

.field private static final DO_UPDATE_SELECTION:I = 0x5a

.field private static final DO_VIEW_CLICKED:I = 0x73

.field private static final TAG:Ljava/lang/String; = "InputMethodWrapper"


# instance fields
.field mCaller:Lcom/android/internal/os/HandlerCaller;

.field mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSession;)V
    .locals 1
    .parameter "context"
    .parameter "inputMethodSession"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodSession$Stub;-><init>()V

    .line 75
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Lcom/android/internal/os/HandlerCaller$Callback;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 76
    iput-object p2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    .line 77
    return-void
.end method


# virtual methods
.method public appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "action"
    .parameter "data"

    .prologue
    .line 211
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 212
    return-void
.end method

.method public dispatchKeyEvent(ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    .locals 3
    .parameter "seq"
    .parameter "event"
    .parameter "callback"

    .prologue
    .line 185
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x46

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 187
    return-void
.end method

.method public dispatchTrackballEvent(ILandroid/view/MotionEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    .locals 3
    .parameter "seq"
    .parameter "event"
    .parameter "callback"

    .prologue
    .line 190
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x50

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 192
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .parameter "completions"

    .prologue
    .line 175
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x41

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 177
    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    if-nez v2, :cond_0

    .line 85
    const-string v0, "InputMethodWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input method session reference was null, ignoring message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 103
    const-string v0, "InputMethodWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intentional unhandled message code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void

    .line 89
    :sswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 90
    .local v7, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, v7}, Lcom/android/internal/os/HandlerCaller;->recycleArgs(Lcom/android/internal/os/HandlerCaller$SomeArgs;)V

    goto :goto_0

    .line 95
    .end local v7           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    :sswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 96
    .restart local v7       #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    new-instance v8, Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;

    iget-object v0, v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethodCallback;

    invoke-direct {v8, v0}, Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;-><init>(Lcom/android/internal/view/IInputMethodCallback;)V

    .line 98
    .local v8, callback:Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v0, v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;->finishedEvent(IZ)V

    .line 99
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, v7}, Lcom/android/internal/os/HandlerCaller;->recycleArgs(Lcom/android/internal/os/HandlerCaller$SomeArgs;)V

    goto :goto_0

    .line 107
    .end local v7           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    .end local v8           #callback:Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_1

    .line 167
    const-string v0, "InputMethodWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :sswitch_2
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodSession;->finishInput()V

    goto :goto_0

    .line 112
    :sswitch_3
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/view/inputmethod/CompletionInfo;

    check-cast v0, [Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_0

    .line 115
    :sswitch_4
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/ExtractedText;

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/InputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0

    .line 119
    :sswitch_5
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 120
    .restart local v7       #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v0, v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    new-instance v4, Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;

    iget-object v1, v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethodCallback;

    invoke-direct {v4, v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;-><init>(Lcom/android/internal/view/IInputMethodCallback;)V

    invoke-interface {v2, v3, v0, v4}, Landroid/view/inputmethod/InputMethodSession;->dispatchKeyEvent(ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    .line 124
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, v7}, Lcom/android/internal/os/HandlerCaller;->recycleArgs(Lcom/android/internal/os/HandlerCaller$SomeArgs;)V

    goto :goto_0

    .line 128
    .end local v7           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    :sswitch_6
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 129
    .restart local v7       #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v0, v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    new-instance v4, Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;

    iget-object v1, v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethodCallback;

    invoke-direct {v4, v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;-><init>(Lcom/android/internal/view/IInputMethodCallback;)V

    invoke-interface {v2, v3, v0, v4}, Landroid/view/inputmethod/InputMethodSession;->dispatchTrackballEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    .line 133
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, v7}, Lcom/android/internal/os/HandlerCaller;->recycleArgs(Lcom/android/internal/os/HandlerCaller$SomeArgs;)V

    goto/16 :goto_0

    .line 137
    .end local v7           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    :sswitch_7
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 138
    .restart local v7       #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v1, v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi1:I

    iget v2, v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi2:I

    iget v3, v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi3:I

    iget v4, v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi4:I

    iget v5, v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi5:I

    iget v6, v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi6:I

    invoke-interface/range {v0 .. v6}, Landroid/view/inputmethod/InputMethodSession;->updateSelection(IIIIII)V

    .line 140
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, v7}, Lcom/android/internal/os/HandlerCaller;->recycleArgs(Lcom/android/internal/os/HandlerCaller$SomeArgs;)V

    goto/16 :goto_0

    .line 144
    .end local v7           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    :sswitch_8
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodSession;->updateCursor(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 148
    :sswitch_9
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 149
    .restart local v7       #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v0, v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v2, v0, v1}, Landroid/view/inputmethod/InputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 151
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, v7}, Lcom/android/internal/os/HandlerCaller;->recycleArgs(Lcom/android/internal/os/HandlerCaller$SomeArgs;)V

    goto/16 :goto_0

    .line 155
    .end local v7           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    :sswitch_a
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputMethodSession;->toggleSoftInput(II)V

    goto/16 :goto_0

    .line 159
    :sswitch_b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    goto/16 :goto_0

    .line 163
    :sswitch_c
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_1

    :goto_1
    invoke-interface {v2, v0}, Landroid/view/inputmethod/InputMethodSession;->viewClicked(Z)V

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_1
        0x50 -> :sswitch_1
        0x5a -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch

    .line 107
    :sswitch_data_1
    .sparse-switch
        0x3c -> :sswitch_2
        0x41 -> :sswitch_3
        0x43 -> :sswitch_4
        0x46 -> :sswitch_5
        0x50 -> :sswitch_6
        0x5a -> :sswitch_7
        0x5f -> :sswitch_8
        0x64 -> :sswitch_9
        0x69 -> :sswitch_a
        0x6e -> :sswitch_b
        0x73 -> :sswitch_c
    .end sparse-switch
.end method

.method public finishInput()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 172
    return-void
.end method

.method public finishSession()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 220
    return-void
.end method

.method public getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    return-object v0
.end method

.method public toggleSoftInput(II)V
    .locals 3
    .parameter "showFlags"
    .parameter "hideFlags"

    .prologue
    .line 215
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x69

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 216
    return-void
.end method

.method public updateCursor(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "newCursor"

    .prologue
    .line 206
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 208
    return-void
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 3
    .parameter "token"
    .parameter "text"

    .prologue
    .line 180
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x43

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 182
    return-void
.end method

.method public updateSelection(IIIIII)V
    .locals 9
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 196
    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x5a

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIIIII(IIIIIII)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 199
    return-void
.end method

.method public viewClicked(Z)V
    .locals 4
    .parameter "focusChanged"

    .prologue
    .line 202
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x73

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 203
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
