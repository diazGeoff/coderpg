package com.coderpg



import org.junit.*
import grails.test.mixin.*

@TestFor(QuestController)
@Mock(Quest)
class QuestControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/quest/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.questInstanceList.size() == 0
        assert model.questInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.questInstance != null
    }

    void testSave() {
        controller.save()

        assert model.questInstance != null
        assert view == '/quest/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/quest/show/1'
        assert controller.flash.message != null
        assert Quest.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/quest/list'

        populateValidParams(params)
        def quest = new Quest(params)

        assert quest.save() != null

        params.id = quest.id

        def model = controller.show()

        assert model.questInstance == quest
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/quest/list'

        populateValidParams(params)
        def quest = new Quest(params)

        assert quest.save() != null

        params.id = quest.id

        def model = controller.edit()

        assert model.questInstance == quest
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/quest/list'

        response.reset()

        populateValidParams(params)
        def quest = new Quest(params)

        assert quest.save() != null

        // test invalid parameters in update
        params.id = quest.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/quest/edit"
        assert model.questInstance != null

        quest.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/quest/show/$quest.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        quest.clearErrors()

        populateValidParams(params)
        params.id = quest.id
        params.version = -1
        controller.update()

        assert view == "/quest/edit"
        assert model.questInstance != null
        assert model.questInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/quest/list'

        response.reset()

        populateValidParams(params)
        def quest = new Quest(params)

        assert quest.save() != null
        assert Quest.count() == 1

        params.id = quest.id

        controller.delete()

        assert Quest.count() == 0
        assert Quest.get(quest.id) == null
        assert response.redirectedUrl == '/quest/list'
    }
}
